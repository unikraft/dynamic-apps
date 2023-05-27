/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{a}from"./transform.db23dc95.3_3_0_0.js";import{i,a as c}from"./typedefs.6c779761.3_3_0_0.js";const n={name:{label:"Name",type:"input",inputType:"text",searchable:!0},instance_name:{label:"Instance Name",type:"input",inputType:"text",searchable:!0},enabled:{label:"Enabled",type:"checkbox",default:!0},service:{label:"Gateway Service",type:"input",inputType:"text"},route:{label:"Route",type:"input",inputType:"text"},consumer:{label:"Consumer",type:"input",inputType:"text"},config:{label:"Config",type:"input",inputType:"text"}};Object.entries(n).forEach(([e,t])=>{a(t,"plugins",e)});const s=(()=>{const e={id:i,...n,tags:c};return Object.entries(e).forEach(([t,p])=>{a(p,"plugins",t)}),e})();export{s as c};
