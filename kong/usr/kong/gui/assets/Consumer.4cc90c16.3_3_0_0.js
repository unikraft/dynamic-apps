/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{t as n}from"./typedefs.6c779761.3_3_0_0.js";import{a as o}from"./transform.db23dc95.3_3_0_0.js";const d={fields:[{username:{label:"Username",searchable:!0,placeholder:"Enter a username"}},{custom_id:{label:"Custom ID",placeholder:"Enter a custom ID"}},{tags:n.tags}],blacklist:["type","username_lower"]};d.fields.forEach(s=>{const[a,t]=Object.entries(s)[0];o(t,"consumers",a)});const f=(()=>{const{username:s,custom_id:a,tags:t}=d.fields.reduce((e,r)=>({...e,...r}),{}),c={id:{label:"ID"},username:s,custom_id:a,created_at:n.created_at,tags:t};return Object.entries(c).forEach(([e,r])=>{e!=="advanced"?o(r,"consumers",e):Object.entries(c.advanced).forEach(([l,m])=>{o(m,"consumers",l)})}),c})();export{f as c,d as s};
