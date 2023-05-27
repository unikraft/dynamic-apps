/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{t}from"./typedefs.6c779761.3_3_0_0.js";import{a as s}from"./transform.db23dc95.3_3_0_0.js";const o={name:{label:"Name",type:"input",inputType:"text",placeholder:"Enter a Key Set Name"},tags:t.tags},n=(()=>{const c={id:t.id,updated_at:t.updated_at,created_at:t.created_at,...Object.entries(o).reduce((e,[a,r])=>(e[a]=r,e),{})};return Object.entries(c).forEach(([e,a])=>s(a,"key-sets",e)),c})();export{n as c,o as s};
