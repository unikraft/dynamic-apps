local cjson = require("cjson.safe").new()
local http = require "resty.luasocket.http"


local lookup_helper = function(self, key) -- signature to match __index meta-method
    if type(key) == "string" then
        local lckey = key:lower()
        for k, v in pairs(self) do
            if type(k) == "string" and k:lower() == lckey then
                error(("key '%s' not found, did you mean '%s'?"):format(key, k), 2)
            end
        end
    end
    error(("key '%s' not found"):format(tostring(key)), 2)
end

local APIS

local function ApiDiscovery()
    if APIS then return end

    local discovery = require "resty.gcp.request.discovery"
    APIS = {}

    for _, v in pairs(discovery.items) do
        local id, _ = string.gsub(v.id, ":", "_")
        id, _ = string.gsub(id, "%.", "p")
        APIS[id] = true
    end
end

local FindApis
FindApis = function(apiClass, methods, curr)
    if type(apiClass) == "table" then
        for k, v in pairs(apiClass) do
            if k == "baseUrl" then
                methods[k] = v
            end
            if k == "methods" then
                if curr then
                    methods[curr] = v
                else
                    methods = v
                end
            end
            if type(v) == "table" then
                FindApis(v, methods, k)
            end
        end
    end
    return methods
end

local function template_expansion(str, params)
    return (string.gsub(str, "{(.-)}", function (key)
        return ngx.escape_uri(params[key])
    end))
end

local function build_request(accesstoken, apiDetail, baseUrl, params, requestBody)
    local media = params and (params.alt == "media")
    if media and not apiDetail.supportsMediaDownload then
        error("API does not supported media download")
    end

    local mediaUpload = apiDetail.supportsMediaUpload

    local req = {
        method = apiDetail.httpMethod,
        headers = {
            ["Authorization"] = "Bearer " .. accesstoken.token
        },
        body = requestBody,
        ssl_verify = true,
    }

    -- it's strange that API supporting media upload has different way of handling path
    local path_template
    if apiDetail.flatPath then
        path_template = apiDetail.flatPath
    elseif mediaUpload then
        baseUrl = "https://storage.googleapis.com"
        path_template = assert(apiDetail.mediaUpload.protocols.simple.path,
            "we only supported simple path for media upload for now")
    else
        path_template = apiDetail.path
    end

    local path = baseUrl .. template_expansion(path_template, params)
    local query

    if apiDetail.flatPath then
        return path, req
    end

    local newpath, query_string = string.match(path, "^(.*)%?(.*)$")
    if query_string then
        path = newpath
        query = ngx.decode_args(query_string)
    else
        query = {}
    end

    for k, v in pairs(params) do
        -- FIXME: this is because we have not handled top-level parameter schemas correctly.
        -- Nesting API's descriptions also apply to the nested level API.
        if k == "alt" then
            query[k] = v
            goto continue
        end
        local param = apiDetail.parameters[k]
        if not param then
            error("invalid parameter: " .. k)
        end
        local location = param.location
        if location == "query" then
            query[k] = v
            -- skip paths as they are already handled
        end
        ::continue::
    end

    if next(query) then
        path = path .. "?" .. ngx.encode_args(query)
    end

    return path, req
end

local BuildMethods = function(methods)
    local baseUrl = methods.baseUrl
    local services = {}
    for k, v in pairs(methods) do
        if type(v) == "table" then
            services[k] = {}
            for serviceName, apiDetail in pairs(v) do
                services[k][serviceName] = function(accesstoken, params, requestBody)
                    if (not params) then
                        error("params is required")
                    end
                    local path, request = build_request(accesstoken, apiDetail, baseUrl, params, requestBody)
                    local client = http.new()
                    local res, err = client:request_uri(path, request)
                    if not res then
                        error(err)
                        return
                    end
                    client:close()

                    local mime = res.headers["Content-Type"]
                    local body = res.body
                    if mime and mime:find("application/json") then
                        body = cjson.decode(body)
                    end

                    -- todo: some APIs expect status other than 2xx
                    if res.status < 200 or res.status >= 300 then
                        -- try to decode even if no mime is provided
                        if type(body) ~= "table" then
                            body = cjson.decode(body)
                        end
                        return nil, body and body.error and body.error.errors and body.error.errors[1] and body.error.errors[1].message or res.body
                    end

                    return body
                end
            end
        end
    end
    return setmetatable(services, { __index = lookup_helper })
end

local load_api
do
    -- using weak values so that API objects can be garbage-collected
    local cache = setmetatable({}, { __mode = "v" })

    function load_api(service)
        if not APIS[service] then
            error("Unknown API/service: " .. tostring(service), 2)
        end

        local api = cache[service]
        if api then
            return api
        end

        local rawAPI = require("resty.gcp.api." .. service)
        local methods = FindApis(rawAPI, {})
        api = BuildMethods(methods)

        cache[service] = api
        return api
    end
end

local GCP = {
    _VERSION = "0.0.8",
}

-- only for unit testing
GCP._build_request = build_request

GCP.__index = function(self, service)
    local api = load_api(service)
    self[service] = api
    return api
end

function GCP:new()
    ApiDiscovery()

    return setmetatable({}, GCP)
end

return setmetatable(
    GCP,
    {
        __call = function(self, ...)
            return self:new(...)
        end
    }
)
