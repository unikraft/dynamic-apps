/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{t}from"./typedefs.6c779761.3_3_0_0.js";import{a as y}from"./transform.db23dc95.3_3_0_0.js";const c={kid:{label:"Key ID",type:"input",inputType:"text",placeholder:"Enter a key ID"},name:{label:"Name",type:"input",inputType:"text",placeholder:"Enter a key name"},"set-id":{label:"Key Set",placeholder:"Select a key set",type:"AutoSuggest",required:!0,entity:"key-sets",inputValues:{fields:["name","id"]}},jwk:{label:"Jwk",type:"textArea",inputType:"text",rows:3,placeholder:"Enter a jwk"},"pem-private_key":{label:"Pem.PrivateKey",inputType:"textArea",type:"textArea",rows:5,useCopy:!0,placeholder:"Enter a pem private key"},"pem-public_key":{label:"Pem.PublicKey",type:"textArea",rows:5,useCopy:!0,inputType:"textArea",placeholder:"Enter a pem public key"},tags:t.tags},l=[{name:"private_key",inputType:"textArea"},{name:"public_key",type:"textArea"}],s=[{name:"kid",inputType:"textArea"},{name:"kty"},{name:"crv"},{name:"x"},{name:"y"}],u=(()=>{const a={id:t.id,updated_at:t.updated_at,created_at:t.created_at,set:{label:"Key Set"},...Object.entries(c).reduce((e,[r,n])=>(e[r]=n,e),{})};Object.entries(a).forEach(([e,r])=>y(r,"keys",e));const p={};return l.forEach(e=>{p["pem."+e.name]=e}),s.forEach(e=>{p["jwk."+e.name]=e}),a.advanced=p,a})();export{u as c,c as s};
