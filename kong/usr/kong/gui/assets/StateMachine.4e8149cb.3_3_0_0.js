/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{B as u,C as f,M as p,__tla as E}from"./index.84d84090.3_3_0_0.js";let s,_=Promise.all([(()=>{try{return E}catch{}})()]).then(async()=>{s=function(t,r){const e=u(null),o=f(()=>{const n={value:t&&t.initial};return e.value||n});function l(n,a){if(e.value=t.transition(e.value,n),r)for(const i in a)r[i]=a[i]}function c(n){return p({id:n,initial:"idle",states:{idle:{on:{FETCH:"pending",REJECT:"error"}},pending:{on:{RESOLVE:"success",REJECT:"error"}},success:{type:"final"},error:{on:{FETCH:"pending"}}}})}return{currentState:o,transition:l,fetchMachine:c}}});export{_ as __tla,s as u};
