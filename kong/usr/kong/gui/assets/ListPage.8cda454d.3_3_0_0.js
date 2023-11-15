/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{ag as b,B as k,q as P,Q as H,r as v,c as w,l as x,w as e,H as B,h as G,b as t,o as m,a as L,ay as p,S,d as a,__tla as q}from"./index.84d84090.3_3_0_0.js";import{_ as D,__tla as E}from"./L2Tabs.vue_vue_type_script_setup_true_lang.5ec63eb6.3_3_0_0.js";import{__tla as K}from"./monaco-editor.90904fcf.3_3_0_0.js";let d,M=Promise.all([(()=>{try{return q}catch{}})(),(()=>{try{return E}catch{}})(),(()=>{try{return K}catch{}})()]).then(async()=>{let s,r,o,n,l,u;s={class:"consumers-listing"},r=a(" Manage the configuration of "),o=a(" Consumers "),n=a(" and "),l=a(" Consumer Groups "),u=a(" . "),d=b({__name:"ListPage",props:{hidePageHeader:{type:Boolean,default:!1}},setup(f){const h=f,g=k(""),y=P([{key:"consumers",title:"Consumers"},{key:"consumer_groups",title:"Consumer Groups"}]),{entityDoc:_}=H();return(N,c)=>{const i=v("KExternalLink");return m(),w("section",s,[h.hidePageHeader?G("",!0):(m(),x(B,{key:0,title:"Consumers"},{"below-title":e(()=>[t(S,{"data-testid":"support-docs"},{default:e(()=>[L("p",null,[r,t(i,{href:p(_)("consumer")},{default:e(()=>[o]),_:1},8,["href"]),n,t(i,{href:p(_)("consumer-groups")},{default:e(()=>[l]),_:1},8,["href"]),u])]),_:1})]),_:1})),t(D,{tabs:y,navigation:"name",onChanged:c[0]||(c[0]=C=>g.value=C)},null,8,["tabs"])])}}})});export{M as __tla,d as default};
