/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as y,o as e,c as s,a as c,R as n,U as o,j as _,V as k,t as A,G as C,h as w,__tla as f}from"./index.84d84090.3_3_0_0.js";let u,N=Promise.all([(()=>{try{return f}catch{}})()]).then(async()=>{const b={name:"KMTabs",props:{tabs:{type:Array,required:!0}},data(){return{activeTab:this.$route.hash||this.tabs[0]&&this.tabs[0].hash,pathName:""}},computed:{hash(){return this.$route.hash}},watch:{hash:{handler(){(!this.pathName||this.pathName===this.$router.currentRoute.value.name)&&this.hash!==this.activeTab&&this.setActiveTab(this.activeTab,!0)},immediate:!0},tabs:{handler(t){this.hash||this.setActiveTab(t[0].hash,!1)},deep:!0}},created(){this.pathName=this.$router.currentRoute.value.name},methods:{setActiveTab(t,i){this.activeTab=t,i&&this.$router.replace({...this.$router.currentRoute.value,hash:t})}}},v={class:"nav nav-tabs"},d=["aria-selected","onKeyup","onClick"],p=["id","aria-controls"],m=["id"];function T(t,i,r,R,h,l){return e(),s("div",null,[c("ul",v,[(e(!0),s(n,null,o(r.tabs,a=>(e(),s("li",{key:a.hash,"aria-selected":h.activeTab===a.hash?"true":"false",tabindex:"0",class:"nav-item",onKeyup:_($=>l.setActiveTab(a.hash,!0),["enter"]),onClick:$=>l.setActiveTab(a.hash,!0)},[c("a",{id:`${a.title.replace(/\s/g,"-").toLowerCase()}`,class:k([{active:h.activeTab===a.hash},"nav-link"]),"aria-controls":`${a.title.replace(" ","-").toLowerCase()}`},A(a.title),11,p)],40,d))),128))]),(e(!0),s(n,null,o(r.tabs,a=>(e(),s("div",{id:`${a.title.toLowerCase()}-tab`,key:a.hash,class:"mt-4"},[h.activeTab===a.hash?C(t.$slots,a.title.replace(/\s/g,"-"),{key:0}):w("",!0)],8,m))),128))])}u=y(b,[["render",T]])});export{u as T,N as __tla};
