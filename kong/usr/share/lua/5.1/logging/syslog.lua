local logging = require "logging"
local lsyslog = require "lsyslog"
local log = lsyslog.log

local convert = {
	[logging.DEBUG] = lsyslog.LOG_DEBUG,
	[logging.INFO]  = lsyslog.LOG_INFO,
	[logging.WARN]  = lsyslog.LOG_WARNING,
	[logging.ERROR] = lsyslog.LOG_ERR,
	[logging.FATAL] = lsyslog.LOG_ALERT,
}

function logging.syslog(params, ...)
  params = logging.getDeprecatedParams({ "ident", "facility" }, params, ...)
  local ident = params.ident or "lua"
  local facility = params.facility or lsyslog.FACILITY_USER
  -- timestampPattern and logPattern not supported, added by syslog itself
  local logPattern = params.logPattern
  local timestampPattern = params.timestampPattern

  lsyslog.open(ident, facility)

  if logPattern then
    -- a pattern was provided, so return an appender that takes that into account
    -- this is less performant, hence we provide 2 different appenders
    return logging.new(function(self, level, message)
      message = logging.prepareLogMsg(logPattern, os.date(timestampPattern), level, message)
      log(convert[level], message)
      return true
    end)
  end

  -- no pattern provided, so return a lean-and-mean version of the appender
  return logging.new(function(self, level, message)
		log(convert[level], message)
		return true
	end)
end


-- Create a module table and copy lsyslog contents (we need the constants, but
-- copy everything because its simpler)
local _M = {} do
  for key, value in pairs(lsyslog) do
    _M[key] = value
  end
end

return setmetatable(_M, {
  -- the default appenders return the function that create the appenders,
  -- we wrap that in a call with a metatable because we also want to return the
  -- lsyslog constants. And the metatable __call methopd allows us to do both.
  __call = function(self, ...)
    return logging.syslog(...)
  end,
})
