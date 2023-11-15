/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as f,r as l,o,c as b,l as s,w as a,b as e,G as c,__tla as g}from"./index.84d84090.3_3_0_0.js";let u,v=Promise.all([(()=>{try{return g}catch{}})()]).then(async()=>{const i={name:"BadgeLink",props:{link:{type:Object,default:null},tooltip:{type:String,default:""}}},_={class:"badge-link"};function k(r,y,t,m,B,h){const n=l("KBadge"),d=l("router-link"),p=l("KTooltip");return o(),b("div",_,[t.tooltip?(o(),s(p,{key:0,label:t.tooltip},{default:a(()=>[e(d,{to:t.link,rel:"noopener",target:"_blank"},{default:a(()=>[e(n,{color:"var(--color)","background-color":"var(--background)"},{default:a(()=>[c(r.$slots,"default",{},void 0,!0)]),_:3})]),_:3},8,["to"])]),_:3},8,["label"])):(o(),s(d,{key:1,to:t.link,rel:"noopener",target:"_blank"},{default:a(()=>[e(n,{color:"var(--color)","background-color":"var(--background)"},{default:a(()=>[c(r.$slots,"default",{},void 0,!0)]),_:3})]),_:3},8,["to"]))])}u=f(i,[["render",k],["__scopeId","data-v-242f6a8a"]])});export{u as B,v as __tla};
