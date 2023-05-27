local http = require "resty.luasocket.http"
local jwt = require "resty.jwt"
local cjson = require("cjson.safe").new()

local function GetJwtToken(serviceAccount)
    local saDecode, err = cjson.decode(serviceAccount)
    if type(saDecode) ~= "table" then
        ngx.log(ngx.ERR, "[accesstoken] Invalid GCP_SERVICE_ACCOUNT, expect JSON: ", tostring(err))
        error("Invalid format for GCP Service Account")
        return
    end
    local timeNow = os.time()
    if (not (saDecode.client_email and saDecode.private_key and saDecode.private_key_id)) then
        ngx.log(ngx.ERR, "[accesstoken] Invalid GCP_SERVICE_ACCOUNT, missing required field")
        error("Invalid GCP Service Account")
        return
    end
    local payload = {
        iss = saDecode.client_email,
        sub = saDecode.client_email,
        aud = "https://www.googleapis.com/oauth2/v4/token",
        iat = timeNow,
        exp = timeNow + 3600,
        scope = "https://www.googleapis.com/auth/cloud-platform"
    }
    local payloadJson = cjson.encode(payload)
    local jwt_token =
        jwt:sign(
        saDecode.private_key,
        {
            header = {kid = saDecode.private_key_id, typ = "JWT", alg = "RS256"},
            payload = payloadJson
        }
    )
    return jwt_token
end

local function GetAccessTokenByJwt(jwtToken)
    local client = http.new()
    local auth_url = "https://www.googleapis.com/oauth2/v4/token"
    local params = {
        grant_type = "urn:ietf:params:oauth:grant-type:jwt-bearer",
        assertion = jwtToken
    }
    local res, err =
        client:request_uri(
        auth_url,
        {
            method = "POST",
            body = cjson.encode(params),
            ssl_verify = true,
        }
    )
    if not res then
        ngx.log(ngx.ERR, "[accesstoken] Unable to get access token")
        error(err)
        return
    end

    client:close()
    local accessToken = cjson.decode(res.body)
    return accessToken
end

local function GetAccessTokenBySA(serviceAccount)

    ngx.log(ngx.DEBUG, "[accesstoken] Using Envrionment Service Account to get Access Token")

    if not serviceAccount then
        -- Note: nginx workers do not have access to env vars. initialize in init phase
        -- or by the 'config' module.
        ngx.log(ngx.ERR, "[accesstoken] Couldn't find GCP_SERVICE_ACCOUNT env variable")
        error("Couldn't find GCP_SERVICE_ACCOUNT env variable")
        return
    end
    local jwtToken = GetJwtToken(serviceAccount)
    local res = assert(GetAccessTokenByJwt(jwtToken))
    if res.error then
        ngx.log(ngx.ERR, "[accesstoken] Unable to get access token: ", res.error_description)
        return
    end
    return res, "SA"
end

local function GetAccessTokenByWI()
    ngx.log(ngx.DEBUG, "[accesstoken] Using Workload Identity to get Access Token")
    local client = http.new()
    local auth_url = "http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/default/token"
    local res, err =
        client:request_uri(
        auth_url,
        {
            headers = {
                ["Metadata-Flavor"] = "Google"
            },
        }
    )
    if not res then
        ngx.log(ngx.DEBUG, "[accesstoken] failed to Access Token ", tostring(err))
        return
    end
    client:close()
    local accessToken = cjson.decode(res.body)
    return accessToken, "WI"
end

local AccessToken = {}
AccessToken.__index = AccessToken
function AccessToken:new(gcpServiceAccount)
    local self = {}
    setmetatable(self, AccessToken)

    gcpServiceAccount = gcpServiceAccount or os.getenv("GCP_SERVICE_ACCOUNT")

    -- First try via Workload Identity and then via Service Account

    local accessToken, authMethod = GetAccessTokenByWI()
    if not accessToken then
        accessToken, authMethod = GetAccessTokenBySA(gcpServiceAccount)
    end

    if (accessToken) then
        self.token = accessToken.access_token
        self.expireTime = ngx.now() + accessToken.expires_in
        self.authMethod = authMethod
    else
        ngx.log(ngx.ERR, "[accesstoken] Unable to get accesstoken")
        error("Failed to authenticate")
        return nil
    end
    return self
end

function AccessToken:needsRefresh()
    return self.expireTime < ngx.now()
end

function AccessToken:refresh()
    local accessToken
    if (self.authMethod == "SA") then
        local gcpServiceAccount = os.getenv("GCP_SERVICE_ACCOUNT")
        accessToken = GetAccessTokenBySA(gcpServiceAccount)
    elseif (self.authMethod == "WI") then
        accessToken = GetAccessTokenByWI()
    end
    if (accessToken) then
        self.token = accessToken.access_token
        self.expireTime = ngx.now() + accessToken.expires_in
        return true
    end
    return false
end

return setmetatable(
    AccessToken,
    {
        __call = function(self, ...)
            return self:new(...)
        end
    }
)
