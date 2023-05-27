/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as c,X as o,o as p,c as u,t as _,h as l,__tla as n}from"./index.84d84090.3_3_0_0.js";let t,i=Promise.all([(()=>{try{return n}catch{}})()]).then(async()=>{const a={name:"HostBlock",props:{record:{type:Object,required:!0}},computed:{updatedAt(){return o(this.record.updated_at)}}},e={key:0,class:"last-updated flex-shrink-0"};function r(m,h,d,k,y,s){return d.record.updated_at?(p(),u("div",e," Last updated: "+_(s.updatedAt),1)):l("",!0)}t=c(a,[["render",r],["__scopeId","data-v-ac52e618"]])});export{t as D,i as __tla};
