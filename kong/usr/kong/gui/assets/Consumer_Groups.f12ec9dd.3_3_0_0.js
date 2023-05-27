/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{t}from"./typedefs.6c779761.3_3_0_0.js";import{a as p}from"./transform.db23dc95.3_3_0_0.js";const u={name:{label:"Name",type:"input",inputType:"text",required:!0,searchable:!0,placeholder:"Enter a name"},tags:t.tags},l=(()=>{const a={id:t.id,updated_at:t.updated_at,created_at:t.created_at,...Object.entries(u).reduce((e,[r,i])=>(e[r]=i,e),{})};return Object.entries(a).forEach(([e,r])=>{p(r,"consumer_groups",e)}),a})(),s={limit:{label:"Limit",type:"input",inputType:"text",valueArrayType:"number",valueType:"array",required:!0},retry_after_jitter_max:{label:"Retry after jitter max",type:"input",inputType:"number",required:!0},window_size:{label:"Window size",type:"input",inputType:"text",valueArrayType:"number",valueType:"array",required:!0},window_type:{label:"Window type",type:"select",inputType:"text",required:!0,default:"sliding",values:[{name:"sliding",id:"sliding"},{name:"fixed",id:"fixed"}],placeholder:"Select window type"}};export{l as c,s as p,u as s};
