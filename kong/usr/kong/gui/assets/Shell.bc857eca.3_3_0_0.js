/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as n,r as i,c as o,b as c,V as d,o as l,__tla as _}from"./index.84d84090.3_3_0_0.js";import{__tla as m}from"./monaco-editor.90904fcf.3_3_0_0.js";let t,u=Promise.all([(()=>{try{return _}catch{}})(),(()=>{try{return m}catch{}})()]).then(async()=>{const a={name:"ShellPage",components:{},computed:{classNames(){return["container-fluid",this.$route.name,{"container-width-constraint":!this.hideSidebar}]},hideSidebar(){return this.$route.meta&&this.$route.meta.hideSidebar||!1}}};function e(h,p,f,b,v,r){const s=i("router-view");return l(),o("div",{class:d(r.classNames)},[c(s)],2)}t=n(a,[["render",e],["__scopeId","data-v-9d0ddf5e"]])});export{u as __tla,t as default};
