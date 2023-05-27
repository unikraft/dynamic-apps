local lrucache = require("resty.lrucache")
local job_module = require("resty.timerng.job")
local utils = require("resty.timerng.utils")
local wheel_group = require("resty.timerng.wheel.group")
local constants = require("resty.timerng.constants")
local thread_group = require("resty.timerng.thread.group")

local utils_float_compare = utils.float_compare

local table_insert = table.insert
local table_concat = table.concat

local math_floor = math.floor
local math_modf = math.modf

local string_format = string.format

local ngx_timer_at = ngx.timer.at
local ngx_timer_every = ngx.timer.every
local ngx_now = ngx.now
local ngx_update_time = ngx.update_time

local error = error
local assert = assert
local pairs = pairs
local ipairs = ipairs
local type = type
local select = select

local TIMER_ONCE = true
local TIMER_REPEATED = false

local _M = {}



local function report_job_expire_callback_inernal(self, job)
    if not job.debug then
        return
    end

    local debug_stats = self.debug_stats
    local callstack = job.meta.callstack

    local stat = debug_stats:get(callstack)

    if not stat then
        stat = {
            running = 0,
            pending = 0,
            elapsed_time = 0,
        }

        debug_stats:set(callstack, stat)
    end

    stat.pending = stat.pending + 1
end



local function report_job_cancel_callback_internal(self, job)
    self.sys_stats.total = self.sys_stats.total - 1

    if not job.debug then
        return
    end

    local debug_stats = self.debug_stats
    local callstack = job.meta.callstack

    local stat = debug_stats:get(callstack)

    if not stat then
        stat = {
            running = 0,
            pending = 0,
            elapsed_time = 0,
        }

        debug_stats:set(callstack, stat)
    end

    stat.elapsed_time =
        stat.elapsed_time + job.stats.runs * job.stats.elapsed_time.avg
end


---create a timed task and insert it into the wheel group
---@param self table self
---@param name any name of this timer
---@param callback function callback of this timer
---@param delay number how many seconds to expire
---@param timer_type boolean TIMER_ONCE or TIMER_REPEATED
---@param argc integer the number of arguments to the callback function
---@param argv table arguments to the callback function
---@return boolean name_or_false the name of the timer if ok, otherwise false
---@return string err error message
local function create(self, name, callback, delay, timer_type, argc, argv)
    local wheels = self.wheels
    local jobs = self.jobs

    wheels:sync_time()

    local job = job_module.new(wheels,
                               name,
                               callback,
                               delay,
                               timer_type,
                               self.opt.debug,
                               argc,
                               argv)

    if jobs[job.name] then
        return false, "already exists timer"
    end

    job:enable()

    jobs[job.name] = job
    self.sys_stats.total = self.sys_stats.total + 1

    if job:is_immediate() then
        wheels.pending_jobs:push_right(job)
        self.thread_group:wake_up_super_thread()
        report_job_expire_callback_inernal(self, job)

        return job.name, nil
    end

    local ok, err = wheels:insert_job(job)

    local _, need_wake_up = wheels:update_earliest_expiry_time()

    if need_wake_up then
        self.thread_group:wake_up_super_thread()
    end

    if ok then
        return job.name, nil
    end

    return false, err
end


function _M.new(options)
    local timer_sys = {}

    if options then
        assert(type(options) == "table", "expected `options` to be a table")

        if options.debug then
            assert(type(options.debug) == "boolean",
                "expected `debug` to be a boolean")
        end

        if options.restart_thread_after_runs then
            assert(type(options.restart_thread_after_runs) == "number",
                "expected `restart_thread_after_runs` to be a number")

            assert(options.restart_thread_after_runs > 0,
                "expected `restart_thread_after_runs` to be greater than 0")

            local _, tmp = math_modf(options.restart_thread_after_runs)

            assert(tmp == 0,
                "expected `restart_thread_after_runs` to be an integer")
        end

        if options.min_threads then
            assert(options.min_threads and options.max_threads,
                "both `min_thread` and `max_threads` must to be set")

            assert(type(options.min_threads) == "number",
                "expected `min_threads` to be a number")

            assert(options.min_threads > 0,
            "expected `min_threads` to be greater than 0")

            local _, tmp = math_modf(options.min_threads)
            assert(tmp == 0, "expected `min_threads` to be an integer")
        end

        if options.max_threads then
            assert(options.min_threads and options.max_threads,
                "both `min_thread` and `max_threads` must to be set")

            assert(type(options.max_threads) == "number",
                "expected `max_threads` to be a number")

            assert(options.max_threads > 0,
            "expected `max_threads` to be greater than 0")

            local _, tmp = math_modf(options.max_threads)
            assert(tmp == 0, "expected `max_threads` to be an integer")
        end

        if options.min_threads and options.max_threads then
            assert(options.min_threads < options.max_threads,
                "expected `max_threads` to be greater than `min_threads`")
        end

        if options.auto_scaling_load_threshold then
            assert(type(options.auto_scaling_load_threshold) == "number",
                "expected `auto_scaling_load_threshold` to be a number")

            assert(options.auto_scaling_load_threshold > 0,
            "expected `auto_scaling_load_threshold` to be greater than 0")
        end

        if options.resolution then
            assert(type(options.resolution) == "number",
                "expected `resolution` to be a number")

            assert(utils_float_compare(options.resolution, 0.1) >= 0,
            "expected `resolution` to be greater than or equal to 0.1")
        end

        if options.wheel_setting then
            local wheel_setting = options.wheel_setting
            local level = wheel_setting.level

            assert(type(wheel_setting) == "table",
                "expected `wheel_setting` to be a table")

            assert(type(wheel_setting.level) == "number",
                "expected `wheel_setting.level` to be a number")

            assert(type(wheel_setting.slots_for_each_level) == "table",
                "expected `wheel_setting.slots_for_each_level` to be a table")

            local slots_for_each_level_length =
                #wheel_setting.slots_for_each_level

            assert(level == slots_for_each_level_length,
                "expected `wheel_setting.level`"
             .. " is equal to "
             .. "the length of `wheel_setting.slots_for_each_level`")

            for i, v in ipairs(wheel_setting.slots_for_each_level) do
                if type(v) ~= "number" then
                    error(string_format(
                        "expected"
                     .. " `wheel_setting.slots_for_each_level[%d]` "
                     .. "to be a number",
                        i))
                end

                if v < 1 then
                    error(string_format(
                        "expected"
                     .. " `wheel_setting.slots_for_each_level[%d]` "
                     .. "to be greater than 1",
                        i))
                end

                if v ~= math_floor(v) then
                    error(string_format(
                        "expected `wheel_setting.slots_for_each_level[%d]`"
                     .. " to be an integer", i))
                end
            end

        end
    end

    local opt = {
        debug = options
            and options.debug
            or constants.DEFAULT_DEBUG,

        wheel_setting = options
            and options.wheel_setting
            or constants.DEFAULT_WHEEL_SETTING,

        resolution = options
            and options.resolution
            or  constants.DEFAULT_RESOLUTION,

        -- restart the thread after every n jobs have been run
        restart_thread_after_runs = options
            and options.restart_thread_after_runsor
            or constants.DEFAULT_RESTART_THREAD_AFTER_RUNS,

        -- number of timer will be created by OpenResty API
        min_threads = options
            and options.min_threads
            or constants.DEFAULT_MIN_THREADS,

        max_threads = options
            and options.max_threads
            or constants.DEFAULT_MAX_THREADS,

        auto_scaling_load_threshold = options
            and options.auto_scaling_load_threshold
            or constants.DEFAULT_AUTO_SCALING_LOAD_THRESHOLD,

        auto_scaling_interval = options
            and options.auto_scaling_interval
            or constants.DEFAULT_AUTO_SCALING_INERVAL,

        -- call function `ngx.update_time` every run of timer job
        force_update_time = options
            and options.force_update_time
            or constants.DEFAULT_FORCE_UPDATE_TIME,
    }

    timer_sys.opt = opt

    -- to generate some IDs
    timer_sys.id_counter = 0

    timer_sys.max_expire = opt.resolution
    for _, v in ipairs(opt.wheel_setting.slots_for_each_level) do
        timer_sys.max_expire = timer_sys.max_expire * v
    end
    timer_sys.max_expire = timer_sys.max_expire - 2

    -- enable/diable entire timing system
    timer_sys.enable = false

    timer_sys.thread_group = thread_group.new(timer_sys)

    timer_sys.jobs = {}

    timer_sys.is_first_start = true

    timer_sys.sys_stats = {
        running = 0,
        total = 0,
        runs = 0,
    }
    timer_sys.debug_stats = assert(lrucache.new(1024))

    local function report_job_expire_callback(job)
        report_job_expire_callback_inernal(timer_sys, job)
    end

    timer_sys.wheels = wheel_group.new(opt.wheel_setting,
                                       opt.resolution,
                                       report_job_expire_callback)

    return setmetatable(timer_sys, { __index = _M })
end


function _M:start()
    if self.is_first_start then
        local ok, err = self.thread_group:spawn()

        if not ok then
            return false, "failed to spawn threads: " .. err
        end

        self.is_first_start = false
    end

    if not self.enable then
        ngx_update_time()
        self.wheels.expected_time = ngx_now()
    end

    self.enable = true

    return true, nil
end


function _M:freeze()
    self.enable = false
end


function _M:destroy()
    self.thread_group:kill()
end


function _M:named_at(name, delay, callback, ...)
    assert(self.enable, "the timer module is not started")
    assert(type(callback) == "function", "expected `callback` to be a function")

    assert(type(delay) == "number", "expected `delay to be a number")
    assert(delay >= 0, "expected `delay` to be greater than or equal to 0")

    if (delay >= self.max_expire) or
       (delay ~= 0 and delay < self.opt.resolution)
    then
        return ngx_timer_at(delay, callback, ...)
    end

    local name_or_false, err =
        create(self, name, callback, delay,
               TIMER_ONCE, select("#", ...), { ... })

    return name_or_false, err
end


function _M:named_every(name, interval, callback, ...)
    assert(self.enable, "the timer module is not started")
    assert(type(callback) == "function", "expected `callback` to be a function")

    assert(type(interval) == "number", "expected `interval to be a number")
    assert(interval > 0, "expected `interval` to be greater than or equal to 0")

    if interval >= self.max_expire or
       interval < self.opt.resolution
    then
        return ngx_timer_every(interval, callback, ...)
    end

    local name_or_false, err =
        create(self, name, callback, interval,
               TIMER_REPEATED, select("#", ...), { ... })

    return name_or_false, err
end


function _M:at(delay, callback, ...)
    return self:named_at(nil, delay, callback, ...)
end


function _M:every(interval, callback, ...)
    return self:named_every(nil, interval, callback, ...)
end


function _M:resume(name)
    assert(type(name) == "string", "expected `name` to be a string")

    local jobs = self.jobs
    local old_job = jobs[name]

    if not old_job then
        return false, "timer not found"
    end

    jobs[name] = nil

    if old_job:is_runnable() then
        return false, "running"
    end

    local name_or_false, err =
        create(self, old_job.name, old_job.callback,
               old_job.delay, old_job:is_oneshot(),
               old_job.argc, old_job.argv)

    local ok = name_or_false ~= false

    jobs[name].meta = old_job:get_metadata()

    return ok, err
end


function _M:pause(name)
    assert(type(name) == "string", "expected `name` to be a string")

    local jobs = self.jobs
    local job = jobs[name]

    if not job then
        return false, "timer not found"
    end

    job:pause()

    return true, nil
end


function _M:cancel(name)
    assert(type(name) == "string", "expected `name` to be a string")

    local jobs = self.jobs
    local job = jobs[name]

    if not job then
        return false, "timer not found"
    end

    report_job_cancel_callback_internal(self, job)
    job:cancel()
    jobs[name] = nil

    return true, nil
end


function _M:is_managed(name)
    return self.jobs[name] ~= nil
end


function _M:stats(options)
    if not options then
        options = {}
    end

    local pending_jobs = self.wheels.pending_jobs
    local sys_stats = self.sys_stats

    local sys = {
        running = sys_stats.running,
        pending = pending_jobs:length(),
        waiting = nil,
        total = sys_stats.total,
        runs = sys_stats.runs,
    }

    sys.waiting = sys.total - sys.running - sys.pending

    if not options.verbose then
        return {
            sys = sys,
        }
    end

    local jobs = {}

    for name, job in pairs(self.jobs) do
        jobs[name] = {
            name = name,
            is_running = job:is_running(),
            meta = job:get_metadata(),
            stats = job:get_stats(),
        }
    end

    if not options.flamegraph then
        return {
            sys = sys,
            timers = jobs,
        }
    end

    local flamegraph = {
        running = {},
        pending = {},
        elapsed_time = {},
    }
    local debug_stats = self.debug_stats
    local backtraces = debug_stats:get_keys()

    for _, backtrace in ipairs(backtraces) do
        local stat = debug_stats:get(backtrace)

        table_insert(flamegraph.running, backtrace)
        table_insert(flamegraph.running, " ")
        table_insert(flamegraph.running, stat.running)
        table_insert(flamegraph.running, "\n")

        table_insert(flamegraph.pending, backtrace)
        table_insert(flamegraph.pending, " ")
        table_insert(flamegraph.pending, stat.pending)
        table_insert(flamegraph.pending, "\n")

        table_insert(flamegraph.elapsed_time, backtrace)
        table_insert(flamegraph.elapsed_time, " ")
        table_insert(flamegraph.elapsed_time,
                     math_floor(stat.elapsed_time * 1000))
        table_insert(flamegraph.elapsed_time, "\n")
    end

    flamegraph.running = table_concat(flamegraph.running)
    flamegraph.pending = table_concat(flamegraph.pending)
    flamegraph.elapsed_time = table_concat(flamegraph.elapsed_time)

    return {
        sys = sys,
        timers = jobs,
        flamegraph = flamegraph,
    }
end


---enable or disable debug mode
---@param status boolean true -> enable | false -> disable
function _M:set_debug(status)
    self.opt.debug = status
end


function _M:_debug_alive_worker_thread_count()
    return self.thread_group:get_alive_worker_thread_count()
end


function _M:_debug_expected_alive_worker_thread_count()
    return self.thread_group:get_expected_alive_worker_thread_count()
end


return _M
