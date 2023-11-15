# lua-resty-timer-ng

A scalable timer library for OpenResty.

* [lua-resty-timer-ng](#lua-resty-timer-ng)
    * [Status](#status)
    * [Synopsis](#synopsis)
    * [Description](#description)
    * [Statistics](#statistics)
    * [Debug Mode](#debug-mode)
    * [Maximum delay/interval](#maximum-delayinterval)
    * [History](#history)
    * [Methods](#methods)
        * [new](#new)
        * [start](#start)
        * [freeze](#freeze)
        * [named_at](#named_at)
        * [named_every](#named_every)
        * [at](#at)
        * [every](#every)
        * [resume](#resume)
        * [pause](#pause)
        * [cancel](#cancel)
        * [destroy](#destroy)
        * [is_managed](#is_managed)
        * [set_debug](#set_debug)
        * [stats](#stats)
    * [License](#license)

## Status

This library is currently considered experimental.

## Synopsis

```
http {
    init_worker_by_lua_block {
        local timer_module = require("resty.timerng")

        local options = {}
        local timer_sys = timer_module.new(options)

        local function callback_once(premature, ...)
            ngx.log(ngx.ERR, "in timer at")
        end

        local function callback_every(premature, ...)
            ngx.log(ngx.ERR, "in timer every")
        end

        -- run after 100 ms
        local name, err = timer_sys:at(0.1, callback_once)

        if not name then
            ngx.log(ngx.ERR, err)
        end

        -- run every 1s
        name , err = timer_sys:every(1, callback_every)

        if not name then
            ngx.log(ngx.ERR, err)
        end
    }
}
```

## Description

This system is based on the timer wheel algorithm.
which uses the small number of timers 
created by OpenResty API `ngx.timer.at` to manage a large number of timed tasks.

In other words, it can reduce the number of fake requests.

* Efficiently, create, pause, start and cancel a timer takes O(1) time.
* Concurrency control, you can limit the number of threads.
* Easy to debug
    * Get statistics such as maximum, minimum, average, and variance of the runtime for each timer.
    * Some information that is useful for debugging, such as where the timer was created and the call stack at that time.

## Statistics

The system records the following information:

* The maximum, minimum, average, and variance of the running time of each timer.
* The location of each timer created, such as call stack.


## Debug Mode

The following information will be recorded in debug mode.

* The callstack when the timer was created
* The elapsed_time for each timer
* The timers that are running
* Timers that are queued

In debug mode, 
you can call [stats()](#stats) to get the raw data needed to generate the flamegraph.


## Maximum delay/interval

```lua
-- for resolution, please see `timer_module.new(options?)`
max_delay = resolution
max_interval = resolution

-- for wheel_setting, please see `timer_module.new(options?)`
for _, slots in ipairs(wheel_setting.slots_for_each_level) do
    max_delay = max_delay * slots
    max_interval = max_interval * slots
end

max_delay = max_delay - 2       -- second
max_interval = max_interval - 2 -- second
```

Exceeding this range will use OpenResty's timer.


## History

Versioning is strictly based on [Semantic Versioning](https://semver.org/)

## Methods

### new

**syntax**: *timer, err = require("resty.timerng").new(options?)*

**context**: *init_by_lua\*, init_worker_by_lua\*, set_by_lua\*, rewrite_by_lua\*, access_by_lua\*, content_by_lua\*, header_filter_by_lua\*, body_filter_by_lua\*, log_by_lua\*, ngx.timer.\**

For example

```lua
local timer_module = require("resty.timerng")
local timer_sys = timer_module.new({
    -- debug mode
    debug = false,

    -- 100ms
    resolution = 0.1,

    restart_thread_after_runs = 5000,

    -- automatically adjusts the number of threads according to the load
    -- load = (running_timers + pending_timers) / threads
    auto_scaling_load_threshold = 5,

    min_threads = 32,
    max_threads = 256,

    -- 0.1 is resolution
    -- max_delay/interval = 10 * 60 * 60 * 21 * 0.1 second
    wheel_setting = {
        level = 4,
        slots_for_each_level = { 10, 60, 60, 24 } ,
    }
})
```

### start

**syntax**: *ok, err = timer:start()*

**context**: *init_worker_by_lua\*, set_by_lua\*, rewrite_by_lua\*, access_by_lua\*, content_by_lua\*, header_filter_by_lua\*, body_filter_by_lua\*, log_by_lua\*, ngx.timer.\**

Start the timer system.

### freeze

**syntax**: *timer:freeze()*

**context**: *init_worker_by_lua\*, set_by_lua\*, rewrite_by_lua\*, access_by_lua\*, content_by_lua\*, header_filter_by_lua\*, body_filter_by_lua\*, log_by_lua\*, ngx.timer.\**

Suspend the timer system and the expiration of each timer will be frozen.

### named_at

**syntax**: *name_or_false, err = timer:named_at(name, delay, callback, ...)*

**context**: *init_worker_by_lua\*, set_by_lua\*, rewrite_by_lua\*, access_by_lua\*, content_by_lua\*, header_filter_by_lua\*, body_filter_by_lua\*, log_by_lua\*, ngx.timer.\**

Create a once timer. You must call this method after you have called `timer:start()`.
If you have called `timer:pause()`, you must call this function after you have called `timer:start()`.

* name: The name of this timer, or if it is set to `nil`, a random name will be generated.
* callback: A callback function will be called when this timer expired, `function callback(premature, ...)`.
* delay: The expiration of this timer.


### named_every

**syntax**: *name_or_false, err = timer:named_every(name, interval, callback, ...)*

**context**: *init_worker_by_lua\*, set_by_lua\*, rewrite_by_lua\*, access_by_lua\*, content_by_lua\*, header_filter_by_lua\*, body_filter_by_lua\*, log_by_lua\*, ngx.timer.\**

Create a recurrent timer. You must call this method after you have called `timer:start()`.
If you have called `timer:pause()`, you must call this function after you have called `timer:start()`.

* name: The name of this timer, or if it is set to `nil`, a random name will be generated.
* callback: A callback function will be called when this timer expired, `function callback(premature, ...)`.
* interval: The expiration of this timer.


### at

Equivalent to `timer:named_at(nil, delay, callback, ...)`

### every

Equivalent to `timer:named_every(nil, interval, callback, ...)`

### resume

**syntax**: *ok, err = timer:resume(name)*

**context**: *init_worker_by_lua\*, set_by_lua\*, rewrite_by_lua\*, access_by_lua\*, content_by_lua\*, header_filter_by_lua\*, body_filter_by_lua\*, log_by_lua\*, ngx.timer.\**

Start a timer that has been paused and resets its expiration.

* name: The name of this timer.


### pause

**syntax**: *ok, err = timer:pause(name)*

**context**: *init_worker_by_lua\*, set_by_lua\*, rewrite_by_lua\*, access_by_lua\*, content_by_lua\*, header_filter_by_lua\*, body_filter_by_lua\*, log_by_lua\*, ngx.timer.\**

Pause a timer that has been started.

* name: The name of this timer.


### cancel

**syntax**: *ok, err = timer:cancel(name)*

**context**: *init_worker_by_lua\*, set_by_lua\*, rewrite_by_lua\*, access_by_lua\*, content_by_lua\*, header_filter_by_lua\*, body_filter_by_lua\*, log_by_lua\*, ngx.timer.\**

Cancel a timer.

* name: The name of this timer.


### destroy

**syntax**: *timer:destroy()*

**context**: *init_worker_by_lua\*, set_by_lua\*, rewrite_by_lua\*, access_by_lua\*, content_by_lua\*, header_filter_by_lua\*, body_filter_by_lua\*, log_by_lua\*, ngx.timer.\**

Destroy all timers and the object is no longer available.

**Any operation (except GC) on this object after calling this method is undefined.**

### is_managed

**syntax**: *timer:is_managed(name)*

**context**: *init_worker_by_lua\*, set_by_lua\*, rewrite_by_lua\*, access_by_lua\*, content_by_lua\*, header_filter_by_lua\*, body_filter_by_lua\*, log_by_lua\*, ngx.timer.\**

Return `true` if the specified timer is managed by this system, and `false` otherwise.

* `name`: name of timer


### set_debug

**syntax**: *timer:set_debug(status)*

**context**: *init_worker_by_lua\*, set_by_lua\*, rewrite_by_lua\*, access_by_lua\*, content_by_lua\*, header_filter_by_lua\*, body_filter_by_lua\*, log_by_lua\*, ngx.timer.\**

Enable or disable debug mode.

* `status`: If true then debug mode will be enabled and vice versa debug mode will be disabled.


### stats

**syntax**: info, err = timer:stats(options?)

**context**: *init_worker_by_lua\*, set_by_lua\*, rewrite_by_lua\*, access_by_lua\*, content_by_lua\*, header_filter_by_lua\*, body_filter_by_lua\*, log_by_lua\*, ngx.timer.\**


Get the statistics of the system.

* `options`:
    * `verbose`: If `true`, the statistics for each timer will be returned, defualt `false`.
    * `flamegraph`: If `true` and `verbose == true`, the raw data of flamegraph will be returned, 
        you can run `flamegraph.pl <output> > a.svg` to generate flamegraph, default `false`.

For example:

```lua
local info, err = timer:stats(true)

if not info then
    -- error
end

-- info.sys = {
--     running = [number],      number of running timers
--     pending = [number],      number of pending timers
--     waiting = [number],      number of unexpired timers
--     total   = [number],      running + pending + waiting
-- }
local sys_info = info.sys


local flamegraph = info.flamegraph

-- flamegraph.running | pending | elapsed_time (second * 1000)
-- is a string, which is fold stacks, like
-- @/lualib/background.lua:32:init();@/lualib/background.lua:64:start_dns_timer() 16
-- @/lualib/background.lua:46:init();@/lualib/background.lua:128:start_cache_timer() 76
-- you can run `flamegraph.pl <output> > a.svg` to generate flamegraph.
-- ref https://github.com/brendangregg/FlameGraph


for timer_name, timer in pairs(info.jobs) 
    local is_running = timer.is_running
    local meta = timer.meta
    local stats = timer.stats
    local runs = timer.runs                     -- total number of runs

    -- meta.name is an automatically generated string 
    -- that stores the location where the creation timer was created.
    -- Such as 'task.lua:56:start_background_task()'

    -- meta.callstack is a string.


    stats = {
        -- elapsed_time is a table that stores the 
        -- maximum, minimum, average and variance 
        -- of the time spent on each run of the timer (second).
        elapsed_time = {
            max = 100
            min = 50
            avg = 70
            variance = 12
        },

        -- total number of runs
        runs = 0,

        -- Number of successful runs
        finish = 0,

        last_err_msg = "",
    }
end
```

## License

```
Copyright 2016-2022 Kong Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
