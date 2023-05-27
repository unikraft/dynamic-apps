/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{t as l}from"./typedefs.6c779761.3_3_0_0.js";import{a as o}from"./transform.db23dc95.3_3_0_0.js";const i={fields:[{cert:{label:"Cert",type:"textArea",rows:10,useCopy:!0}},{key:{label:"Key",type:"textArea",rows:10,useCopy:!0}},{tags:l.tags}]};i.fields.forEach(t=>{const[a,c]=Object.entries(t)[0];o(c,"certificates",a)});const b=(()=>{const{cert:t,key:a,tags:c}=i.fields.reduce((e,r)=>({...e,...r}),{}),s={id:l.id,_nocopy_subject:{label:"Subject"},_nocopy_issuer:{label:"Issuer"},_nocopy_subjectAltName:{label:"SAN"},_nocopy_notAfter:{label:"Expiry date"},_nocopy_keyUsage:{label:"Certificate key usage"},snis:{label:"SNIs"},cert:t,key:a,created_at:l.created_at,tags:c,advanced:{cert_alt:{label:"Cert Alt"},key_alt:{label:"Key Alt"}}};return Object.entries(s).forEach(([e,r])=>{e!=="advanced"?o(r,"certificates",e):Object.entries(s.advanced).forEach(([n,y])=>{o(y,"certificates",n)})}),s})();export{b as c,i as s};
