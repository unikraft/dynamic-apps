/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{t as c}from"./typedefs.6c779761.3_3_0_0.js";import{a as s}from"./transform.db23dc95.3_3_0_0.js";const r={fields:[{cert:{label:"CA",type:"textArea",rows:15,useCopy:!0}},{tags:c.tags}]};r.fields.forEach(t=>{const[e,a]=Object.entries(t)[0];s(a,"ca_certificates",e)});const l=(()=>{const t={id:c.id,_nocopy_issuer:{label:"Issuer"},_nocopy_notAfter:{label:"Expiry date"},_nocopy_keyUsage:{label:"Certificate key usage"},cert_digest:{label:"Certificate digest",useMono:!0},...r.fields.reduce((e,a)=>({...e,...a}),{}),created_at:c.created_at};return Object.entries(t).forEach(([e,a])=>{e!=="advanced"?s(a,"ca_certificates",e):Object.entries(t.advanced).forEach(([i,o])=>{s(o,"ca_certificates",i)})}),t})();export{l as c,r as s};
