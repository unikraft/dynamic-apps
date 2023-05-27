/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as v,r as b,o as m,c as x,b as i,w as o,d as n,__tla as f}from"./index.84d84090.3_3_0_0.js";let d,P=Promise.all([(()=>{try{return f}catch{}})()]).then(async()=>{const l={name:"Pagination",props:{hasPrevious:{type:Boolean,default:!1},hasNext:{type:Boolean,default:!1}},emits:["previous","next"]},r={class:"pagination"},u=n(" Previous "),p=n(" Next \u203A ");function c(e,a,t,h,y,B){const s=b("KButton");return m(),x("div",r,[i(s,{disabled:!t.hasPrevious,appearance:"outline","data-testid":"previous",onClick:a[0]||(a[0]=_=>e.$emit("previous"))},{default:o(()=>[u]),_:1},8,["disabled"]),i(s,{disabled:!t.hasNext,appearance:"outline","data-testid":"next",onClick:a[1]||(a[1]=_=>e.$emit("next"))},{default:o(()=>[p]),_:1},8,["disabled"])])}d=v(l,[["render",c],["__scopeId","data-v-838dbb3e"]])});export{d as P,P as __tla};
