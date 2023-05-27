local array = require("resty.timerng.array")

local array_new = array.new

local assert = assert
local math_floor = math.floor

local setmetatable = setmetatable

local _M = {}

local meta_table = {
    __index = _M,
}


function _M:set_higher_wheel(wheel)
    self.higher_wheel = wheel
end


function _M:set_lower_wheel(wheel)
    self.lower_wheel = wheel
end


function _M:get_cur_pointer()
    return self.pointer
end


---return the position of the pointer after offset
---@param pointer integer starting position
---@param offset integer number of spins
---@return integer new_pointer position after spinning
---@return integer cycles number of passes through the starting position
function _M:cal_pointer(pointer, offset)
    assert(pointer >= 1)

    local nelts = self.nelts

    -- using C-style index for calculations
    local p = pointer - 1

    local old = p

    -- CircularQueue-like calculation
    p = (p + offset) % nelts

    local cycles = math_floor(offset / nelts)

    if old + (offset % nelts) >= nelts then
        cycles = cycles + 1
    end

    -- plus 1 for Lua-style index
    return p + 1, cycles
end


---calculating the pointer after wheel spinning at each level
---@param steps integer number of spins
---@return table next_pointers map from `wheel_id` to `next_pointer`
function _M:cal_pointer_cascade(steps)
    local next_pointers = { }
    local cur_wheel = self

    local steps_for_cur_wheel = steps
    local steps_for_next_wheel

    repeat
        local pointer

        pointer, steps_for_next_wheel =
        cur_wheel:cal_pointer(cur_wheel:get_cur_pointer(),
                              steps_for_cur_wheel)

        assert(next_pointers[cur_wheel.id] == nil,
            "the `wheel.id` must be unique")

        next_pointers[cur_wheel.id] = pointer

        steps_for_cur_wheel = steps_for_next_wheel
        cur_wheel = cur_wheel.higher_wheel
    until not cur_wheel or steps_for_cur_wheel == 0

    return next_pointers
end


---inserting a job into this wheel or lower wheel
---@param job table a table that was returned by `job.new()`
---@return boolean ok ok?
---@return string err error message
function _M:insert(job)
    assert(self.slots)

    local next_pointer = job:get_next_pointer(self.id)

    if next_pointer then
        self.slots[next_pointer]:push_right(job)
        return true, nil
    end

    local lower_wheel = self.lower_wheel

    if lower_wheel then
        return lower_wheel:insert(job)
    end

    self.report_job_expire_callback(job)
    self.expired_jobs:push_right(job)

    return true, nil
end


---spin the pointer, store expired jobs, move some jobs into lower wheel
---@param offset integer number of spins
function _M:spin_pointer(offset)
    assert(offset >= 0)

    if offset == 0 then
        return
    end

    local final_pointer = self:get_cur_pointer()
    local cycles
    local higher_wheel = self.higher_wheel
    local lower_wheel = self.lower_wheel
    local expired_jobs = self.expired_jobs

    for _ = 1, offset do
        final_pointer, cycles = self:cal_pointer(final_pointer, 1)

        if higher_wheel then
            -- spin the higher wheel to move some jobs to this wheel
            higher_wheel:spin_pointer(cycles)
        end

        local jobs = self:get_jobs_by_pointer(final_pointer)

        while not jobs:is_empty() do
            local job = jobs:pop_right()

            if lower_wheel then
                lower_wheel:insert(job)
            else
                self.report_job_expire_callback(job)
                expired_jobs:push_right(job)
            end
        end
    end

    self.pointer = final_pointer
end


function _M:get_jobs()
    return self.slots[self:get_cur_pointer()]
end


function _M:get_jobs_by_pointer(pointer)
    return self.slots[pointer]
end


---return all expired jobs, or return nil.
---@return table jobs_or_nil
function _M:fetch_all_expired_jobs()
    if self.expired_jobs:is_empty() then
        return nil
    end

    local ret = self.expired_jobs

    self.expired_jobs = array_new()

    return ret
end

---new a wheel
---@param id string id of this wheel
---@param nelts integer slots of this wheel
---@return table wheel a wheel
function _M.new(id, nelts, report_job_expire_callback)
    assert(id ~= nil)

    local self = {
        id = id,

        pointer = 1,

        nelts = nelts,
        slots = {},
        higher_wheel = nil,
        lower_wheel = nil,

        expired_jobs = array.new(),

        report_job_expire_callback = report_job_expire_callback,
    }

    local slots = self.slots
    for i = 1, self.nelts do
        slots[i] = array_new()
    end

    return setmetatable(self, meta_table)
end


return _M