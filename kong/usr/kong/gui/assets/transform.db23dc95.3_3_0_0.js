/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{m as o}from"./marked.esm.77963db0.3_3_0_0.js";const h={cert:{desc:"PEM-encoded public certificate of the CA."},cert_digest:{desc:"SHA256 hex digest of the public certificate."},tags:{desc:"An optional set of strings associated with the Certificate for grouping and filtering. "}},r={cert:{desc:"PEM-encoded public certificate chain of the SSL key pair. This field is _referenceable_, which means it can be securely stored as a [secret](/gateway/latest/plan-and-deploy/security/secrets-management/getting-started) in a vault. References must follow a [specific format](/gateway/latest/plan-and-deploy/security/secrets-management/reference-format). "},cert_alt:{desc:"PEM-encoded public certificate chain of the alternate SSL key pair. This should only be set if you have both RSA and ECDSA types of certificate available and would like Kong to prefer serving using ECDSA certs when client advertises support for it. This field is _referenceable_, which means it can be securely stored as a [secret](/gateway/latest/plan-and-deploy/security/secrets-management/getting-started) in a vault. References must follow a [specific format](/gateway/latest/plan-and-deploy/security/secrets-management/reference-format). "},key:{desc:"PEM-encoded private key of the SSL key pair. This field is _referenceable_, which means it can be securely stored as a [secret](/gateway/latest/plan-and-deploy/security/secrets-management/getting-started) in a vault. References must follow a [specific format](/gateway/latest/plan-and-deploy/security/secrets-management/reference-format). "},key_alt:{desc:"PEM-encoded private key of the alternate SSL key pair. This should only be set if you have both RSA and ECDSA types of certificate available and would like Kong to prefer serving using ECDSA certs when client advertises support for it. This field is _referenceable_, which means it can be securely stored as a [secret](/gateway/latest/plan-and-deploy/security/secrets-management/getting-started) in a vault. References must follow a [specific format](/gateway/latest/plan-and-deploy/security/secrets-management/reference-format). "},tags:{desc:"An optional set of strings associated with the Certificate for grouping and filtering. "}},n={custom_id:{desc:"Field for storing an existing unique ID for the Consumer - useful for mapping Kong with users in your existing database. You must send either this field or `username` with the request. "},tags:{desc:"An optional set of strings associated with the Consumer for grouping and filtering. "},type:{desc:"The type of consumer. It can be `0` (proxy), `1` (developer), `2` (admin) or `3` (application) "},username:{desc:"The unique username of the Consumer. You must send either this field or `custom_id` with the request. "}},c={name:{desc:"The name to associate with the given key-set."},tags:{desc:"An optional set of strings associated with the Key for grouping and filtering. "}},l={jwk:{desc:"A JSON Web Key represented as a string. "},kid:{desc:"A unique identifier for a key. "},name:{desc:"The name to associate with the given keys."},pem:{desc:"A keypair in PEM format. "},"pem.private_key":{desc:"The private key in PEM format. "},"pem.public_key":{desc:"The pubkic key in PEM format. "},set:{desc:"The id (an UUID) of the key-set with which to associate the key. "},tags:{desc:"An optional set of strings associated with the Key for grouping and filtering. "}},u={config:{desc:"The configuration properties for the Plugin which can be found on the plugins documentation page in the [Kong Hub](https://docs.konghq.com/hub/). "},consumer:{desc:"If set, the plugin will activate only for requests where the specified has been authenticated. (Note that some plugins can not be restricted to consumers this way.). Leave unset for the plugin to activate regardless of the authenticated Consumer. "},enabled:{desc:"Whether the plugin is applied."},instance_name:{desc:"The Plugin instance name. "},name:{desc:"The name of the Plugin that's going to be added. Currently, the Plugin must be installed in every Kong instance separately. "},ordering:{desc:"Lorem Ipsum "},protocols:{desc:'A list of the request protocols that will trigger this plugin. The default value, as well as the possible values allowed on this field, may change depending on the plugin type. For example, plugins that only work in stream mode will only support `"tcp"` and `"tls"`. '},route:{desc:"If set, the plugin will only activate when receiving requests via the specified route. Leave unset for the plugin to activate regardless of the Route being used. "},service:{desc:"If set, the plugin will only activate when receiving requests via one of the routes belonging to the specified Service. Leave unset for the plugin to activate regardless of the Service being matched. "},tags:{desc:"An optional set of strings associated with the Plugin for grouping and filtering. "}},d={destinations:{desc:'A list of IP destinations of incoming connections that match this Route when using stream routing. Each entry is an object with fields "ip" (optionally in CIDR range notation) and/or "port". '},expression:{desc:"Use Router Expression to perform route match. This option is only available when `router_flavor` is set to `expressions`. "},headers:{desc:"One or more lists of values indexed by header name that will cause this Route to match if present in the request. The `Host` header cannot be used with this attribute: hosts should be specified using the `hosts` attribute. When `headers` contains only one value and that value starts with the special prefix `~*`, the value is interpreted as a regular expression. "},hosts:{desc:"A list of domain names that match this Route. Note that the hosts value is case sensitive. "},https_redirect_status_code:{desc:"The status code Kong responds with when all properties of a Route match except the protocol i.e. if the protocol of the request is `HTTP` instead of `HTTPS`. `Location` header is injected by Kong if the field is set to 301, 302, 307 or 308. Note: This config applies only if the Route is configured to only accept the `https` protocol. "},methods:{desc:"A list of HTTP methods that match this Route. "},name:{desc:'The name of the Route. Route names must be unique, and they are case sensitive. For example, there can be two different Routes named "test" and "Test".'},path_handling:{desc:"Controls how the Service path, Route path and requested path are combined when sending a request to the upstream. See above for a detailed description of each behavior. "},paths:{desc:"A list of paths that match this Route. "},preserve_host:{desc:"When matching a Route via one of the `hosts` domain names, use the request `Host` header in the upstream request headers. If set to `false`, the upstream `Host` header will be that of the Service's `host`. "},protocols:{desc:'An array of the protocols this Route should allow. See the [Route Object](#route-object) section for a list of accepted protocols. When set to only `"https"`, HTTP requests are answered with an upgrade error. When it is set to only `"http"`, this is essentially the same as `["http", "https"]` in that both HTTP and HTTPS requests are allowed. Default: `["http", "https"]`. '},regex_priority:{desc:"A number used to choose which route resolves a given request when several routes match it using regexes simultaneously. When two routes match the path and have the same `regex_priority`, the older one (lowest `created_at`) is used. Note that the priority for non-regex routes is different (longer non-regex routes are matched before shorter ones). "},request_buffering:{desc:"Whether to enable request body buffering or not. With HTTP 1.1, it may make sense to turn this off on services that receive data with chunked transfer encoding. "},response_buffering:{desc:"Whether to enable response body buffering or not. With HTTP 1.1, it may make sense to turn this off on services that send data with chunked transfer encoding. "},service:{desc:"The Service this Route is associated to. This is where the Route proxies traffic to. "},snis:{desc:"A list of SNIs that match this Route when using stream routing. "},sources:{desc:'A list of IP sources of incoming connections that match this Route when using stream routing. Each entry is an object with fields "ip" (optionally in CIDR range notation) and/or "port". '},strip_path:{desc:"When matching a Route via one of the `paths`, strip the matching prefix from the upstream request URL. "},tags:{desc:"An optional set of strings associated with the Route for grouping and filtering. "}},f={ca_certificates:{desc:"Array of `CA Certificate` object UUIDs that are used to build the trust store while verifying upstream server's TLS certificate. If set to `null` when Nginx default is respected. If default CA list in Nginx are not specified and TLS verification is enabled, then handshake with upstream server will always fail (because no CA are trusted). "},client_certificate:{desc:"Certificate to be used as client certificate while TLS handshaking to the upstream server. "},connect_timeout:{desc:"The timeout in milliseconds for establishing a connection to the upstream server. "},enabled:{desc:"Whether the Service is active. If set to `false`, the proxy behavior will be as if any routes attached to it do not exist (404). Default: `true`. "},host:{desc:"The host of the upstream server. Note that the host value is case sensitive."},name:{desc:"The Service name."},path:{desc:"The path to be used in requests to the upstream server."},port:{desc:"The upstream server port."},protocol:{desc:"The protocol used to communicate with the upstream. "},read_timeout:{desc:"The timeout in milliseconds between two successive read operations for transmitting a request to the upstream server. "},retries:{desc:"The number of retries to execute upon failure to proxy."},tags:{desc:"An optional set of strings associated with the Service for grouping and filtering. "},tls_verify:{desc:"Whether to enable verification of upstream server TLS certificate. If set to `null`, then the Nginx default is respected. "},tls_verify_depth:{desc:"Maximum depth of chain while verifying Upstream server's TLS certificate. If set to `null`, then the Nginx default is respected. "},write_timeout:{desc:"The timeout in milliseconds between two successive write operations for transmitting a request to the upstream server. "}},p={certificate:{desc:"The id (a UUID) of the certificate with which to associate the SNI hostname. The Certificate must have a valid private key associated with it to be used by the SNI object. "},name:{desc:"The SNI name to associate with the given certificate."},tags:{desc:"An optional set of strings associated with the SNIs for grouping and filtering. "}},g={tags:{desc:"An optional set of strings associated with the Target for grouping and filtering. "},target:{desc:"The target address (ip or hostname) and port. If the hostname resolves to an SRV record, the `port` value will be overridden by the value from the DNS record. "},weight:{desc:"The weight this target gets within the upstream loadbalancer (`0`-`65535`). If the hostname resolves to an SRV record, the `weight` value will be overridden by the value from the DNS record. "}},m={algorithm:{desc:"Which load balancing algorithm to use."},client_certificate:{desc:"If set, the certificate to be used as client certificate while TLS handshaking to the upstream server."},hash_fallback:{desc:"What to use as hashing input if the primary `hash_on` does not return a hash (eg. header is missing, or no Consumer identified). Not available if `hash_on` is set to `cookie`."},hash_fallback_header:{desc:"The header name to take the value from as hash input. Only required when `hash_fallback` is set to `header`."},hash_fallback_query_arg:{desc:"The name of the query string argument to take the value from as hash input. Only required when `hash_fallback` is set to `query_arg`."},hash_fallback_uri_capture:{desc:"The name of the route URI capture to take the value from as hash input. Only required when `hash_fallback` is set to `uri_capture`."},hash_on:{desc:"What to use as hashing input. Using `none` results in a weighted-round-robin scheme with no hashing."},hash_on_cookie:{desc:"The cookie name to take the value from as hash input. Only required when `hash_on` or `hash_fallback` is set to `cookie`. If the specified cookie is not in the request, Kong will generate a value and set the cookie in the response."},hash_on_cookie_path:{desc:"The cookie path to set in the response headers. Only required when `hash_on` or `hash_fallback` is set to `cookie`."},hash_on_header:{desc:"The header name to take the value from as hash input. Only required when `hash_on` is set to `header`."},hash_on_query_arg:{desc:"The name of the query string argument to take the value from as hash input. Only required when `hash_on` is set to `query_arg`."},hash_on_uri_capture:{desc:"The name of the route URI capture to take the value from as hash input. Only required when `hash_on` is set to `uri_capture`."},"healthchecks.active.concurrency":{desc:"Number of targets to check concurrently in active health checks."},"healthchecks.active.headers":{desc:"One or more lists of values indexed by header name to use in GET HTTP request to run as a probe on active health checks. Values must be pre-formatted."},"healthchecks.active.healthy.http_statuses":{desc:"An array of HTTP statuses to consider a success, indicating healthiness, when returned by a probe in active health checks."},"healthchecks.active.healthy.interval":{desc:"Interval between active health checks for healthy targets (in seconds). A value of zero indicates that active probes for healthy targets should not be performed."},"healthchecks.active.healthy.successes":{desc:"Number of successes in active probes (as defined by `healthchecks.active.healthy.http_statuses`) to consider a target healthy."},"healthchecks.active.http_path":{desc:"Path to use in GET HTTP request to run as a probe on active health checks."},"healthchecks.active.https_sni":{desc:"The hostname to use as an SNI (Server Name Identification) when performing active health checks using HTTPS. This is particularly useful when Targets are configured using IPs, so that the target host's certificate can be verified with the proper SNI."},"healthchecks.active.https_verify_certificate":{desc:"Whether to check the validity of the SSL certificate of the remote host when performing active health checks using HTTPS."},"healthchecks.active.timeout":{desc:"Socket timeout for active health checks (in seconds)."},"healthchecks.active.type":{desc:"Whether to perform active health checks using HTTP or HTTPS, or just attempt a TCP connection."},"healthchecks.active.unhealthy.http_failures":{desc:"Number of HTTP failures in active probes (as defined by `healthchecks.active.unhealthy.http_statuses`) to consider a target unhealthy."},"healthchecks.active.unhealthy.http_statuses":{desc:"An array of HTTP statuses to consider a failure, indicating unhealthiness, when returned by a probe in active health checks."},"healthchecks.active.unhealthy.interval":{desc:"Interval between active health checks for unhealthy targets (in seconds). A value of zero indicates that active probes for unhealthy targets should not be performed."},"healthchecks.active.unhealthy.tcp_failures":{desc:"Number of TCP failures in active probes to consider a target unhealthy."},"healthchecks.active.unhealthy.timeouts":{desc:"Number of timeouts in active probes to consider a target unhealthy."},"healthchecks.passive.healthy.http_statuses":{desc:"An array of HTTP statuses which represent healthiness when produced by proxied traffic, as observed by passive health checks."},"healthchecks.passive.healthy.successes":{desc:"Number of successes in proxied traffic (as defined by `healthchecks.passive.healthy.http_statuses`) to consider a target healthy, as observed by passive health checks."},"healthchecks.passive.type":{desc:"Whether to perform passive health checks interpreting HTTP/HTTPS statuses, or just check for TCP connection success. In passive checks, `http` and `https` options are equivalent."},"healthchecks.passive.unhealthy.http_failures":{desc:"Number of HTTP failures in proxied traffic (as defined by `healthchecks.passive.unhealthy.http_statuses`) to consider a target unhealthy, as observed by passive health checks."},"healthchecks.passive.unhealthy.http_statuses":{desc:"An array of HTTP statuses which represent unhealthiness when produced by proxied traffic, as observed by passive health checks."},"healthchecks.passive.unhealthy.tcp_failures":{desc:"Number of TCP failures in proxied traffic to consider a target unhealthy, as observed by passive health checks."},"healthchecks.passive.unhealthy.timeouts":{desc:"Number of timeouts in proxied traffic to consider a target unhealthy, as observed by passive health checks."},"healthchecks.threshold":{desc:"The minimum percentage of the upstream's targets' weight that must be available for the whole upstream to be considered healthy."},host_header:{desc:"The hostname to be used as `Host` header when proxying requests through Kong."},name:{desc:"This is a hostname, which must be equal to the `host` of a Service."},slots:{desc:"The number of slots in the load balancer algorithm. If `algorithm` is set to `round-robin`, this setting determines the maximum number of slots. If `algorithm` is set to `consistent-hashing`, this setting determines the actual number of slots in the algorithm. Accepts an integer in the range `10`-`65536`."},tags:{desc:"An optional set of strings associated with the Upstream for grouping and filtering. "},use_srv_name:{desc:"If set, the balancer will use SRV hostname(if DNS Answer has SRV record) as the proxy upstream `Host`."}},v={config:{desc:"The configuration properties for the Vault which can be found on the vaults' documentation page. "},description:{desc:"The description of the Vault entity. "},name:{desc:"The name of the Vault that's going to be added. Currently, the Vault implementation must be installed in every Kong instance. "},prefix:{desc:"The unique prefix (or identifier) for this Vault configuration. The prefix is used to load the right Vault configuration and implementation when referencing secrets with the other entities. "},tags:{desc:"An optional set of strings associated with the Vault for grouping and filtering. "}},a={"__!!NOTICE":"THIS FILE IS AUTO-GENERATED; DO NOT EDIT",ca_certificates:h,certificates:r,consumers:n,key_sets:c,keys:l,plugins:u,routes:d,services:f,snis:p,targets:g,upstreams:m,vaults:v},y=(e,t)=>{if(a[e])return a[e][t]},w=(e,t,i)=>{const s=y(t,i);s&&s.desc&&(e.help=o.parse(s.desc))};export{w as a};
