local assert = assert

local _M = {
    -- disable debug mode
    DEFAULT_DEBUG = false,

    DEFAULT_MIN_THREADS = 32,

    DEFAULT_MAX_THREADS = 256,

    DEFAULT_AUTO_SCALING_LOAD_THRESHOLD = 5,

    -- 10s
    DEFAULT_AUTO_SCALING_INERVAL = 10,

    -- restart the thread after every 2000 jobs have been run
    DEFAULT_RESTART_THREAD_AFTER_RUNS = 2000,

    -- not used at the moment
    DEFAULT_FORCE_UPDATE_TIME = true,

    -- The number of seconds corresponding to one unit
    -- of spin of the pointer of the lowest wheel
    DEFAULT_RESOLUTION = 0.1,

    DEFAULT_WHEEL_SETTING = {
        -- number of wheels
        level = 4,

        -- slots_for_each_level[1] is the lowest wheel
        -- slots_for_each_level[#slots_for_each_level] is the higest wheel
        slots_for_each_level = {10, 60, 60, 24},
    },

    MIN_RESOLUTION = 0.1,

    -- for Nginx's graceful shutdown
    TOLERANCE_OF_GRACEFUL_SHUTDOWN = 1,

    -- 1s
    SCALING_RECORD_INTERVAL = 1,

    -- 10m
    SCALING_INFO_LOG_INTERVAL = 600,
}

-- We don't need a high accuracy.
assert(_M.DEFAULT_RESOLUTION >= _M.MIN_RESOLUTION,
    "`DEFAULT_RESOLUTION` must be greater than "
 .. "or equal to `MIN_RESOLUTION`")

do
    local type = type
    local error = error
    local math_modf = math.modf
    local math_floor = math.floor
    local ipairs = ipairs
    local string_format = string.format

    local wheel_setting = _M.DEFAULT_WHEEL_SETTING

    assert(type(wheel_setting) == "table",
        "`DEFAULT_WHEEL_SETTING` must be a table")

    local level = wheel_setting.level
    local slots_for_each_level = wheel_setting.slots_for_each_level

    assert(type(level) == "number",
        "`DEFAULT_WHEEL_SETTING.level` muse be a number")

    assert(level >= 1,
        "`DEFAULT_WHEEL_SETTING.level` muse be greater than or equal to 1")

    local _, tmp = math_modf(level)

    assert(tmp == 0,
        "`DEFAULT_WHEEL_SETTING.level` muse be an integer")

    assert(type(slots_for_each_level) == "table",
        "`DEFAULT_WHEEL_SETTING.slots_for_each_level` muse be a table")

    local slots_for_each_level_length = #slots_for_each_level

    assert(level == slots_for_each_level_length,
        "`DEFAULT_WHEEL_SETTING.level`"
     .. " must be equal to "
     .. "the length of `DEFAULT_WHEEL_SETTING.slots_for_each_level`")


    for i, v in ipairs(slots_for_each_level) do
        if type(v) ~= "number" then
            error(string_format(
                "`DEFAULT_WHEEL_SETTING.slots_for_each_level[%d]`"
             .. " must be a number", i))
        end

        if v < 1 then
            error(string_format(
                "`DEFAULT_WHEEL_SETTING.slots_for_each_level[%d]`"
             .. "must be greater than 1", i))
        end

        if v ~= math_floor(v) then
            error(string_format(
                "`DEFAULT_WHEEL_SETTING.slots_for_each_level[%d]`"
             .. "must be an integer", i))
        end
    end
end

return _M