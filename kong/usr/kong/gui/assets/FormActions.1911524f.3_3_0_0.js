/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as p,r as _,o as f,c as v,b as s,w as n,d as l,__tla as u}from"./index.84d84090.3_3_0_0.js";let d,C=Promise.all([(()=>{try{return u}catch{}})()]).then(async()=>{const i={name:"FormActions",props:{primaryDisabled:{type:Boolean,default:!1}},emits:["save","cancel"],methods:{handleSave(a){this.$emit("save",a)},handleCancel(a){this.$emit("cancel",a)}}},o={class:"form-page-actions","data-testid":"form-header-actions"},r=l(" Cancel "),c=l(" Save ");function m(a,y,h,b,k,e){const t=_("KButton");return f(),v("div",o,[s(t,{"data-testid":"form-header-action-cancel",onClick:e.handleCancel},{default:n(()=>[r]),_:1},8,["onClick"]),s(t,{disabled:h.primaryDisabled,"data-testid":"form-header-action-save",appearance:"primary",onClick:e.handleSave},{default:n(()=>[c]),_:1},8,["disabled","onClick"])])}d=p(i,[["render",m],["__scopeId","data-v-80d1f06f"]])});export{d as F,C as __tla};
