local semaphore = require("ngx.semaphore")
local loop = require("resty.timerng.thread.loop")

local ngx_log = ngx.log
local ngx_DEBUG = ngx.DEBUG
local ngx_ERR = ngx.ERR

local math_floor = math.floor
local math_abs = math.abs
local math_max = math.max

local ngx_now = ngx.now
local ngx_worker_exiting = ngx.worker.exiting

local next = next
local pairs = pairs
local assert = assert
local string_format = string.format
local setmetatable = setmetatable

local CONSTANTS_TOLERANCE_OF_GRACEFUL_SHUTDOWN =
    require("resty.timerng.constants").TOLERANCE_OF_GRACEFUL_SHUTDOWN

local _M = {}

local meta_table = {
    __index = _M,
}


local function report_before_job_execute(self, job)
    local timer_sys = self.timer_sys
    timer_sys.sys_stats.running = timer_sys.sys_stats.running + 1

    if not job.debug then
        return
    end

    local debug_stats = timer_sys.debug_stats
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

    stat.running = stat.running + 1
    stat.pending = math_max(stat.pending - 1, 0)
end


local function report_after_job_execute(self, job)
    local timer_sys = self.timer_sys
    timer_sys.sys_stats.running = timer_sys.sys_stats.running - 1
    timer_sys.sys_stats.runs = timer_sys.sys_stats.runs + 1

    if not job.debug then
        return
    end

    local debug_stats = timer_sys.debug_stats
    local callstack = job.meta.callstack

    local stat = debug_stats:get(callstack)

    if not stat then
        ngx_log(ngx_DEBUG, "[timer-ng] lost stats key: ", callstack)
        return
    end

    stat.running = math_max(stat.running - 1, 0)
end


local function report_alive(self, thread)
    assert(self.spawned_threads[thread.name] ~= nil)

    self.alive_threads[thread.name] = thread
    self.alive_threads_count = self.alive_threads_count + 1
end


local function report_exit(self, thread)
    assert(self.spawned_threads[thread.name] ~= nil)
    assert(self.alive_threads[thread.name] ~= nil)

    self.spawned_threads[thread.name] = nil
    self.alive_threads[thread.name] = nil

    self.spawned_threads_count = self.spawned_threads_count - 1
    self.alive_threads_count = self.alive_threads_count - 1
end


local function start_loop(self)
    local name = string_format(
        "worker#%d#%d",
        math_floor(ngx_now() * 1000),
        self.name_counter)

    self.name_counter = self.name_counter + 1

    self.spawned_threads[name] = loop.new(name, {
        init = self.init,
        before = self.before,
        loop_body = self.loop_body,
        after = self.after,
        finally = self.finally,
    })

    local ok, err = self.spawned_threads[name]:spawn()

    if not ok then
        return false, err
    end

    self.spawned_threads_count = self.spawned_threads_count + 1

    return true, nil
end


local function thread_init(context, report_alive_callback, self)
    report_alive_callback(self, context.self)

    context.counter = {
        runs = 0,
    }
    return loop.ACTION_CONTINUE
end


local function thread_before(context, self)
    local wake_up_semaphore = self.wake_up_semaphore
    local ok, err =
        wake_up_semaphore:wait(CONSTANTS_TOLERANCE_OF_GRACEFUL_SHUTDOWN)

    if not ok and err ~= "timeout" then
        ngx_log(ngx_ERR, "[timer-ng] failed to wait semaphore: ", err)
    end

    return loop.ACTION_CONTINUE
end


local function thread_body(context, self,
                           report_before_job_execute_callback,
                           report_after_job_execute_callback)
    local timer_sys = self.timer_sys
    local wheels = timer_sys.wheels

    while not wheels.pending_jobs:is_empty() and
          not ngx_worker_exiting()
    do
        local job = wheels.pending_jobs:pop_left()

        if not job:is_runnable() then
            goto continue
        end

        report_before_job_execute_callback(self, job)
        job:execute()
        report_after_job_execute_callback(self, job)

        if job:is_oneshot() then
            timer_sys:cancel(job.name)
            goto continue
        end

        if job:is_runnable() then
            wheels:sync_time()
            job:re_cal_next_pointer(wheels)
            wheels:insert_job(job)

            local _, need_wake_up = wheels:update_earliest_expiry_time()

            if need_wake_up then
                self.super_thread:wake_up()
            end
        end

        ::continue::
    end

    self.super_thread:wake_up()

    return loop.ACTION_CONTINUE
end


local function thread_after(context, restart_thread_after_runs)
    local counter = context.counter
    local runs = counter.runs + 1

    counter.runs = runs

    if runs > restart_thread_after_runs then
        return loop.ACTION_EXIT
    end

    return loop.ACTION_CONTINUE
end


local function thread_finally(context, report_exit_callback, self)
    context.counter.runs = 0

    if ngx_worker_exiting() then
        local jobs = self.timer_sys.jobs
        local job_name, job = next(jobs)

        while job_name do
            jobs[job_name] = nil
            job:execute()
            job_name, job = next(jobs)
        end
    end

    report_exit_callback(self, context.self)
    return loop.ACTION_CONTINUE
end


function _M:get_alive_thread_count()
    return self.alive_threads_count
end


function _M:get_expected_alive_thread_count()
    return self.expected_alive_thread_count
end


function _M:set_super_thread_ref(super_thread)
    self.super_thread = super_thread
end


function _M:kill()
    local spawned_threads = self.spawned_threads
    for _, thread in pairs(spawned_threads) do
        thread:kill()
    end
end


function _M:wake_up()
    local wake_up_semaphore = self.wake_up_semaphore
    wake_up_semaphore:post(self.alive_threads_count)
end


function _M:stretch(ratio)
    if ratio == 0 then
        return true, 0
    end

    local delta_thread_count = 0

    local delta = (self.max_threads - self.min_threads) * math_abs(ratio)
    delta = math_floor(delta)

    if ratio < 0 then
        local thread_name, thread = next(self.alive_threads)

        while delta > 0
          and thread_name
          and self.expected_alive_thread_count > self.min_threads
        do
            thread:kill()
            delta = delta - 1
            self.expected_alive_thread_count =
                self.expected_alive_thread_count - 1
                delta_thread_count = delta_thread_count - 1
            thread_name, thread = next(self.alive_threads, thread_name)
        end

        return true, delta_thread_count
    end

    while delta > 0
      and self.expected_alive_thread_count < self.max_threads
    do
        self.expected_alive_thread_count =
            self.expected_alive_thread_count + 1
            delta_thread_count = delta_thread_count + 1
        delta = delta - 1
    end

    return true, delta_thread_count
end


function _M:spawn()
    while self.spawned_threads_count < self.expected_alive_thread_count do
        local ok, err = start_loop(self)
        if not ok then
            return false, err
        end
    end

    return true, nil
end


function _M.new(timer_sys, min_threads, max_threads)
    local self = {
        name_counter = 0,
        timer_sys = timer_sys,
        wake_up_semaphore = semaphore.new(0),
        min_threads = min_threads,
        max_threads = max_threads,

        spawned_threads_count = 0,
        spawned_threads = {},

        alive_threads_count = 0,
        alive_threads = {},

        expected_alive_thread_count = nil,

        super_thread = nil,
    }

    self.expected_alive_thread_count =
        math_floor((min_threads + max_threads) / 2)
    self.wake_up_semaphore:post(self.expected_alive_thread_count)

    self.init = {
        argc = 2,
        argv = {
            report_alive,
            self,
        },
        callback = thread_init,
    }

    self.before = {
        argc = 1,
        argv = {
            self,
        },
        callback = thread_before,
    }

    self.loop_body = {
        argc = 3,
        argv = {
            self,
            report_before_job_execute,
            report_after_job_execute,
        },
        callback = thread_body,
    }

    self.after = {
        argc = 1,
        argv = {
            self.timer_sys.opt.restart_thread_after_runs,
        },
        callback = thread_after,
    }

    self.finally = {
        argc = 2,
        argv = {
            report_exit,
            self,
        },
        callback = thread_finally,
    }

    return setmetatable(self, meta_table)
end


return _M