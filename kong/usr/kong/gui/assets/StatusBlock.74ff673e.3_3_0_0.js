/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{a as u,__tla as _}from"./EntityToggleBadge.6a1cd1fb.3_3_0_0.js";import{_ as p,r as g,o as b,c as f,b as T,p as S,e as h,a as v,__tla as B}from"./index.84d84090.3_3_0_0.js";let n,q=Promise.all([(()=>{try{return _}catch{}})(),(()=>{try{return B}catch{}})()]).then(async()=>{const r={name:"StatusBlock",components:{EntityToggleBadge:u},props:{entity:{type:String,required:!0},entityName:{type:String,required:!0},record:{type:Object,required:!0},disabled:{type:Boolean,default:!1}},emits:["transition","update-record"],methods:{onTransition(t){this.$emit("transition",t)}}},s=t=>(S("data-v-9fa0a2c1"),t=t(),h(),t),i={class:"status flex items-center","data-testid":"status"},o=s(()=>v("div",{class:"status-label"}," Status ",-1));function d(t,a,e,x,E,c){const l=g("EntityToggleBadge");return b(),f("div",i,[o,T(l,{entity:e.entity,"entity-name":e.entityName,record:e.record,disabled:e.disabled,onTransition:c.onTransition,onUpdateRecord:a[0]||(a[0]=(y,m)=>t.$emit("update-record",y,m))},null,8,["entity","entity-name","record","disabled","onTransition"])])}n=p(r,[["render",d],["__scopeId","data-v-9fa0a2c1"]])});export{n as S,q as __tla};
