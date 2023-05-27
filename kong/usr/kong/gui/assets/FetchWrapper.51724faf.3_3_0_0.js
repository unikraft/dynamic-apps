/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as v,__tla as K}from"./KDataProvider.78c9bca8.3_3_0_0.js";import{_ as P,r,o as a,l as s,w as p,a as _,K as c,E as i,t as g,G as S,__tla as b}from"./index.84d84090.3_3_0_0.js";let u,D=Promise.all([(()=>{try{return K}catch{}})(),(()=>{try{return b}catch{}})()]).then(async()=>{const d={name:"FetchWrapper",components:{KDataProvider:v},props:{deps:{type:Object,default:()=>({})},url:{type:String,required:!0},skeletonProps:{type:Object,default:()=>{}}},emits:["resolve"]},m={class:"mb-0"};function y(l,o,e,j,E,F){const f=r("KSkeleton"),h=r("KEmptyState"),k=r("KDataProvider");return a(),s(k,{url:e.url,onResolve:o[0]||(o[0]=t=>l.$emit("resolve",t))},{default:p(({loading:t,error:n})=>[_("article",null,[t?(a(),s(f,c(i({key:0},e.skeletonProps)),null,16)):n?(a(),s(h,{key:1,"cta-is-hidden":"","is-error":""},{message:p(()=>[_("h5",m,g(n),1)]),_:2},1024)):S(l.$slots,"default",c(i({key:2},e.deps)))])]),_:3},8,["url"])}u=P(d,[["render",y]])});export{u as F,D as __tla};
