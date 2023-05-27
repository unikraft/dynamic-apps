local utils = require("resty.timerng.utils")
local wheel = require("resty.timerng.wheel")
local array = require("resty.timerng.array")

local array_merge = array.merge

local utils_float_compare = utils.float_compare
local utils_convert_second_to_step = utils.convert_second_to_step

local table_insert = table.insert

local ngx_now = ngx.now
local ngx_update_time = ngx.update_time

local ipairs = ipairs
local setmetatable = setmetatable

local CONSTANTS_TOLERANCE_OF_GRACEFUL_SHUTDOWN =
    require("resty.timerng.constants").TOLERANCE_OF_GRACEFUL_SHUTDOWN

local _M = {}

local meta_table = {
    __index = _M,
}


---calculate how long until the next timer expires
---@return number delay how long until the next timer expires
---@return boolean is_earlier_than_before
function _M:update_earliest_expiry_time()
    local delay = 0
    local lowest_wheel = self.lowest_wheel
    local resolution = self.resolution
    local old = self.earliest_expiry_time
    local cur_msec_pointer = lowest_wheel:get_cur_pointer()

    -- `lowest_wheel.nelts - 1` means
    -- ignore the current slot
    for i = 1, lowest_wheel.nelts - 1 do
        local pointer, cycles =
            lowest_wheel:cal_pointer(cur_msec_pointer, i)

        delay = delay + resolution

        -- Scan only to the end point, not the whole wheel.
        -- why?
        -- Because there might be some jobs falling from the higher wheel
        -- when the pointer of the `lowest_wheel` spins to the starting point.
        -- If the whole wheel is scanned
        -- and the result obtained is used as the sleep time of the super timer,
        -- some jobs of higher wheels may not be executed in time.
        -- This is because the super timer will only be woken up
        -- when any wheels are modified or when the semaphore timeout.
        if cycles ~= 0 then
            break
        end

        local jobs = lowest_wheel:get_jobs_by_pointer(pointer)

        if not jobs:is_empty() then
            break
        end

        if delay >= CONSTANTS_TOLERANCE_OF_GRACEFUL_SHUTDOWN then
            break
        end
    end

    self.earliest_expiry_time = ngx_now() + delay

    return delay, old < self.earliest_expiry_time
end


-- do the following things
-- * add all expired jobs from wheels to `wheels.pending_jobs`
function _M:fetch_all_expired_jobs()
    for _, _wheel in ipairs(self.wheels) do
        local expired_jobs = _wheel:fetch_all_expired_jobs()
        array_merge(self.pending_jobs, expired_jobs)

        if expired_jobs then
            expired_jobs:release()
        end
    end
end


function _M:sync_time()
    local lowest_wheel = self.lowest_wheel
    local resolution = self.resolution

    -- perhaps some jobs have expired but not been fetched
    self:fetch_all_expired_jobs()

    ngx_update_time()
    self.real_time = ngx_now()

    if utils_float_compare(self.real_time, self.expected_time) <= 0 then
        -- This could be caused by a floating-point error
        -- or by NTP changing the time to an earlier time.
        return
    end

    local delta = self.real_time - self.expected_time
    local steps = utils_convert_second_to_step(delta, resolution)

    lowest_wheel:spin_pointer(steps)

    self:fetch_all_expired_jobs()

    -- The floating-point error may cause
    -- `expected_time` to be larger than `real_time`
    -- after this line is run.
    self.expected_time = self.expected_time + resolution * steps

    -- reset
    self.earliest_expiry_time = 0
end


-- insert a job into the wheel group
function _M:insert_job(job)
    return self.highest_wheel:insert(job)
end


function _M.new(wheel_setting, resolution, report_job_expire_callback)
    local self = {
        -- see `constants.DEFAULT_WHEEL_SETTING`
        setting = wheel_setting,

        -- see `constants.DEFAULT_RESOLUTION`
        resolution = resolution,

        -- get it by `ngx.now()`
        real_time = 0,

        -- time of last update of wheel-group status
        expected_time = 0,

        earliest_expiry_time = 0,

        pending_jobs = array.new(),

        -- store wheels for each level
        -- map from wheel_level to wheel
        wheels = utils.table_new(wheel_setting.level, 0),

        report_job_expire_callback = report_job_expire_callback,
    }

    local prev_wheel = nil
    local cur_wheel

    local wheels = self.wheels

    -- connect all the wheels to make a group, like a clock.
    for level, slots in ipairs(wheel_setting.slots_for_each_level) do
        local wheel_id = "wheel#" .. level
        cur_wheel = wheel.new(wheel_id, slots, report_job_expire_callback)

        if prev_wheel then
            cur_wheel:set_lower_wheel(prev_wheel)
            prev_wheel:set_higher_wheel(cur_wheel)
        end

        table_insert(wheels, cur_wheel)
        prev_wheel = cur_wheel
    end

    -- the highest wheels was used to insert jobs
    self.highest_wheel = wheels[#wheels]

    -- the lowest wheel was used to reschedule jobs
    self.lowest_wheel = wheels[1]

    return setmetatable(self, meta_table)
end


return _M