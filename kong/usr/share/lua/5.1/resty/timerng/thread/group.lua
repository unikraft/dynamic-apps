local super_thread_module = require("resty.timerng.thread.super")
local worker_thread_module = require("resty.timerng.thread.worker")

local setmetatable = setmetatable

local _M = {}

local meta_table = {
    __index = _M,
}


function _M:wake_up_super_thread()
    self.super_thread:wake_up()
end


function _M:wake_up_worker_thread()
    self.worker_thread:wake_up()
end


function _M:get_expected_alive_worker_thread_count()
    return self.worker_thread:get_expected_alive_thread_count()
end


function _M:get_alive_worker_thread_count()
    return self.worker_thread:get_alive_thread_count()
end


---spawn super_thread, and all worker threads
---@return boolean ok ok?
---@return string err_msg
function _M:spawn()
    local ok, err
    ok, err = self.super_thread:spawn()

    if not ok then
        return false, err
    end

    ok, err = self.worker_thread:spawn()

    if not ok then
        self.super_thread:kill()
        self.worker_thread:kill()
        return false, err
    end

    return true, nil
end


---kill super_thread, and all worker threads
function _M:kill()
    self.super_thread:kill()
    self.worker_thread:kill()
end


function _M.new(timer_sys)
    local super_thread = super_thread_module.new(timer_sys)
    local worker_thread = worker_thread_module.new(timer_sys,
                                                   timer_sys.opt.min_threads,
                                                   timer_sys.opt.max_threads)

    local self = {
        super_thread = super_thread,
        worker_thread = worker_thread,
    }

    super_thread:set_worker_thread_ref(worker_thread)
    worker_thread:set_super_thread_ref(super_thread)

    return setmetatable(self, meta_table)
end

return _M