/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{t as r}from"./typedefs.6c779761.3_3_0_0.js";import{a as s}from"./transform.db23dc95.3_3_0_0.js";const l={fields:[{name:{searchable:!0},hash_fallback:{visible:e=>e&&e.hash_on!=="cookie"},"healthchecks-active-healthy-http_statuses":{type:"input",inputType:"text",default:[200,302].join(", "),transform:function(e){return Array.isArray(e)?e:e?e.split(/,\s?/g).map(t=>Number(t)):null}},"healthchecks-active-unhealthy-http_statuses":{type:"input",inputType:"text",default:[429,404,500,501,502,503,504,505].join(", "),transform:function(e){return Array.isArray(e)?e:e?e.split(/,\s?/g).map(t=>Number(t)):null}},"healthchecks-passive-healthy-http_statuses":{type:"input",inputType:"text",default:[200,201,202,203,204,205,206,207,208,226,300,301,302,303,304,305,306,307,308].join(", "),transform:function(e){return Array.isArray(e)?e:e?e.split(/,\s?/g).map(t=>Number(t)):null}},"healthchecks-passive-unhealthy-http_statuses":{type:"input",inputType:"text",default:[429,500,503].join(", "),transform:function(e){return Array.isArray(e)?e:e?e.split(/,\s?/g).map(t=>Number(t)):null}},client_certificate:{label:"Client Certificate",styleClasses:"",type:"input",inputType:"text",placeholder:"Enter a Certificate Id",hint:"Optional",transform:function(e){return e?{id:e}:null}},tags:r.tags}]};Object.entries(l.fields[0]).forEach(([e,t])=>{s(t,"upstreams",e)});const o=(()=>{const e={id:r.id,name:{label:"Name"},algorithm:{label:"Algorithm"},hash_on:{label:"HashOn"},hash_on_header:{label:"HashOnHeader"},hash_on_cookie:{label:"HashOnCookie"},hash_on_cookie_path:{label:"HashOnCookiePath"},slots:{label:"Slots"},healthchecks:{label:"Health Checks",useMono:!0},tags:{label:"Tags"},advanced:{hash_fallback:{label:"HashFallback"},hash_fallback_header:{label:"HashFallbackHeader"},host_header:{label:"HostHeader"},client_certificate:{label:"Client Certificate"}}};return Object.entries(e).forEach(([t,n])=>{t!=="advanced"?(e[t]={...n,...l.fields[0][t]},s(e[t],"upstreams",t)):Object.entries(e.advanced).forEach(([a,i])=>{e.advanced[a]={...i,...l.fields[0][a]},s(e.advanced[a],"upstreams",a)})}),e})();export{o as c,l as s};
