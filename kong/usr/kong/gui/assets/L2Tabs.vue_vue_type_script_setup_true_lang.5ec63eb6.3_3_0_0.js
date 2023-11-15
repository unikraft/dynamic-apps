/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{ag as k,B as w,C as m,ak as K,r,l as c,O as V,ay as l,w as $,aw as C,o as h,G as T,h as f,aD as B,__tla as R}from"./index.84d84090.3_3_0_0.js";let v,W=Promise.all([(()=>{try{return R}catch{}})()]).then(async()=>{v=k({__name:"L2Tabs",props:{tabs:null,initialKey:null,navigation:null},emits:["changed"],setup(i,{emit:o}){const t=i,_=C(),u=B(),s=w(t.initialKey?`#${t.initialKey}`:""),n=m(()=>s.value.startsWith("#")?s.value.slice(1):s.value),d=m(()=>t.tabs.map(({key:a,...e})=>({...e,hash:`#${a}`}))),g=a=>{const e=a.startsWith("#")?a.slice(1):a;switch(o("changed",e),t.navigation){case"name":{_.push({name:e});break}}};return t.navigation==="name"&&K(()=>u.name,a=>{s.value=a?`#${a}`:""},{immediate:!0}),n.value&&o("changed",n.value),(a,e)=>{const p=r("RouterView"),y=r("KTabs");return h(),c(y,{modelValue:s.value,"onUpdate:modelValue":e[0]||(e[0]=b=>s.value=b),tabs:l(d),onChanged:g},V({_:2},[l(n)===l(u).name?{name:l(n),fn:$(()=>[T(a.$slots,l(n),{},()=>[i.navigation?(h(),c(p,{key:0})):f("",!0)])])}:void 0]),1032,["modelValue","tabs"])}}})});export{v as _,W as __tla};
