local ngx_log = ngx.log
local ngx_EMERG = ngx.EMERG

local ngx_timer_at = ngx.timer.at
local ngx_worker_exiting = ngx.worker.exiting

local string_format = string.format

local table_unpack = table.unpack

local setmetatable = setmetatable
local tostring = tostring
local assert = assert
local error = error
local pcall = pcall
local pairs = pairs

local ACTION_CONTINUE = 1
local ACTION_ERROR = 2
local ACTION_EXIT = 3

local NEED_CHECK_WORKER_EIXTING = {
    init = false,
    before = true,
    loop_body = true,
    after = false,
    finally = false,
}


local _M = {
    ACTION_CONTINUE = ACTION_CONTINUE,
    ACTION_ERROR = ACTION_ERROR,
    ACTION_EXIT = ACTION_EXIT,
}


local meta_table = {
    __index = _M,
}


local function nop_init()
    return ACTION_CONTINUE
end

local function nop_before()
    return ACTION_CONTINUE
end

local function nop_loop_body()
    return ACTION_CONTINUE
end

local function nop_after()
    return ACTION_CONTINUE
end

local function nop_finally()
    return ACTION_CONTINUE
end


local PAHSE_HANDLERS = {
    init = nop_init,
    before = nop_before,
    loop_body = nop_loop_body,
    after = nop_after,
    finally = nop_finally,
}


---make log message
---@param self table
---@param phase string init | before | loop_body | after | finally
---@param action number _M.ACTION_*
---@param msg? string message
---@return string log_string
local function make_log_msg(self, phase, action, msg)
    if action == ACTION_ERROR then
        return string_format(
            "[timer-ng] thread %s will exits after "
            .. "the %s phase was executed: %s",
            self.name,
            phase,
            msg
        )

    else
        error("[timer-ng] unexpected error")
    end
end


---@param self table self
---@param phase string init | before | loop_body | after | finally
---@return integer action
---@return string message
local function phase_handler_wrapper(self, phase)
    local ok, action_or_err, err_or_nil =
        pcall(self[phase].callback,
              self.context,
              table_unpack(self[phase].argv, 1, self[phase].argc))

    if not ok then
        return ACTION_ERROR, action_or_err
    end

    local action = action_or_err
    local err = err_or_nil

    if action == ACTION_CONTINUE
    then
        if  self[phase].need_check_worker_exiting and
            ngx_worker_exiting()
        then
            return ACTION_EXIT
        end

        if self._kill then
            return ACTION_EXIT
        end

        return action

    elseif action == ACTION_EXIT then
        return action

    elseif action == ACTION_ERROR then
        assert(err ~= nil)
        return ACTION_ERROR, err

    else
        error("[timer-ng] unexpected error")
    end
end


---exec phase_handler and handle its result
---@param self table
---@param phase string init/before/loop_body/after/finally
---@return boolean need_to_exit_thread
local function do_phase_handler(self, phase)
    local action, err = phase_handler_wrapper(self, phase)

    if action == ACTION_CONTINUE then
        return false

    elseif action == ACTION_ERROR then
        ngx_log(ngx_EMERG, make_log_msg(self, phase, action, err))
        return true

    elseif action == ACTION_EXIT then
        return true

    else
        error("[timer-ng] unexpected error")
    end
end


local function loop_wrapper(premature, self)
    if premature then
        return
    end

    if not do_phase_handler(self, "init") then
        while not ngx_worker_exiting() and not self._kill do
            if do_phase_handler(self, "before")
            or do_phase_handler(self, "loop_body")
            or do_phase_handler(self, "after")
            then
                break
            end
        end
    end

    do_phase_handler(self, "finally")
end


function _M:spawn()
    self._kill = false
    local ok, err = ngx_timer_at(0, loop_wrapper, self)

    if not ok then
        ngx_log(ngx_EMERG,
                "[timer-ng] failed to spawn thread ", self.name, ": ",
                err)
        return false, err
    end

    return true, nil
end


function _M:kill()
    self._kill = true
end


function _M.new(name, options)
    assert(options ~= nil)

    local self = {
        name = tostring(name),
        context = {
            self = nil
        },
        _kill = false
    }

    self.context.self = self

    for phase, default_handler in pairs(PAHSE_HANDLERS) do
        self[phase] = {}

        self[phase].need_check_worker_exiting
                = NEED_CHECK_WORKER_EIXTING[phase]

        if not options[phase] then
            self[phase].argc = 0
            self[phase].argv = {}
            self[phase].callback = default_handler

        else
            self[phase].argc = options[phase].argc
            self[phase].argv = options[phase].argv
            self[phase].callback = options[phase].callback
        end
    end

    return setmetatable(self, meta_table)
end


return _M
