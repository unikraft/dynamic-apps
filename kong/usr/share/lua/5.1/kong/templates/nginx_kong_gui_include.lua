-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

return [[
> local admin_gui_rewrite = admin_gui_path ~= "/"
> local admin_gui_path_prefix = admin_gui_path
> if admin_gui_path == "/" then
>   admin_gui_path_prefix = ""
> end
location = $(admin_gui_path_prefix)/robots.txt {
    gzip on;
    gzip_types text/plain text/css application/json application/javascript;

    return 200 'User-agent: *\nDisallow: /';
}

location = $(admin_gui_path_prefix)/kconfig.js {
    root gui_config;

    try_files /kconfig.js =404;

    gzip on;
    gzip_types text/plain text/css application/json application/javascript;

    log_not_found off;

    expires -1;
}

location = $(admin_gui_path_prefix)/favicon.ico {
    root gui;

    try_files /favicon.ico =404;

    log_not_found off;

    gzip on;
    gzip_types text/plain text/css application/json application/javascript;

    expires 90d;
    add_header Cache-Control 'public';
    add_header X-Frame-Options 'sameorigin';
    add_header X-XSS-Protection '1; mode=block';
    add_header X-Content-Type-Options 'nosniff';
    add_header X-Permitted-Cross-Domain-Policies 'master-only';
    etag off;
}

> -- special case for Kong Manager's vite-plugin-monaco-editor dependency
location ~* ^$(admin_gui_path_prefix)(?<path>/monacoeditorwork/.*)$ {
    root gui;

    try_files /__km_base__$path =404;

    log_not_found off;

    gzip on;
    gzip_types text/plain text/css application/json application/javascript;

    expires 90d;
    add_header Cache-Control 'public';
    add_header X-Frame-Options 'sameorigin';
    add_header X-XSS-Protection '1; mode=block';
    add_header X-Content-Type-Options 'nosniff';
    add_header X-Permitted-Cross-Domain-Policies 'master-only';
    etag off;

> if admin_gui_rewrite then
    sub_filter '/__km_base__/' '$(admin_gui_path)/';
> else
    sub_filter '/__km_base__/' '/';
> end
    sub_filter_once off;
    sub_filter_types *;
}

location ~* ^$(admin_gui_path_prefix)(?<path>/.*\.(jpg|jpeg|png|gif|svg|ico|css|ttf|js)(\?.*)?)$ {
    root gui;

    try_files $path =404;

    log_not_found off;

    gzip on;
    gzip_types text/plain text/css application/json application/javascript;

    expires 90d;
    add_header Cache-Control 'public';
    add_header X-Frame-Options 'sameorigin';
    add_header X-XSS-Protection '1; mode=block';
    add_header X-Content-Type-Options 'nosniff';
    add_header X-Permitted-Cross-Domain-Policies 'master-only';
    etag off;

> if admin_gui_rewrite then
    sub_filter '/__km_base__/' '$(admin_gui_path)/';
> else
    sub_filter '/__km_base__/' '/';
> end
    sub_filter_once off;
    sub_filter_types *;
}

location ~* ^$(admin_gui_path_prefix)(?<path>/.*)?$ {
    root gui;

    try_files $path /index.html =404;

    log_not_found off;

    gzip on;
    gzip_types text/plain text/css application/json application/javascript;

    add_header Cache-Control 'no-store, no-cache, must-revalidate, proxy-revalidate, max-age=0';
    add_header X-Frame-Options 'sameorigin';
    add_header X-XSS-Protection '1; mode=block';
    add_header X-Content-Type-Options 'nosniff';
    add_header X-Permitted-Cross-Domain-Policies 'master-only';
    etag off;

> if admin_gui_rewrite then
    sub_filter '/__km_base__/' '$(admin_gui_path)/';
> else
    sub_filter '/__km_base__/' '/';
> end
    sub_filter_once off;
    sub_filter_types *;
}
]]
