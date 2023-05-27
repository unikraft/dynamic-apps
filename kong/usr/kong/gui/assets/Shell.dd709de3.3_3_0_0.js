/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as f,r as s,c as p,a as t,l as h,w as A,h as g,b as v,o as e,d as B,s as l,__tla as C}from"./index.84d84090.3_3_0_0.js";import{__tla as w}from"./monaco-editor.90904fcf.3_3_0_0.js";let r,y=Promise.all([(()=>{try{return C}catch{}})(),(()=>{try{return w}catch{}})()]).then(async()=>{const n={name:"TeamShell",computed:{rbacEnabled(){return this.$config.RBAC_ENABLED}}},i={class:"teams container-fluid"},o={class:"container"},c=t("strong",null,"RBAC is disabled!",-1),_=B(" Configuration will not be applied until RBAC is enabled. ");function d(E,a,R,k,N,u){const m=s("KAlert"),b=s("router-view");return e(),p("div",i,[t("div",o,[u.rbacEnabled?g("",!0):(e(),h(m,{key:0,appearance:"info",class:"mb-7"},{alertMessage:A(()=>[a[0]||(l(-1),a[0]=t("div",null,[c,_]),l(1),a[0])]),_:1}))]),v(b)])}r=f(n,[["render",d]])});export{y as __tla,r as default};
