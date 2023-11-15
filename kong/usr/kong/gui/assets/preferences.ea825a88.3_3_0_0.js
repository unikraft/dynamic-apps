/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as g,r as s,o as l,c as v,G as n,l as w,w as a,b as r,$ as z,__tla as S}from"./index.84d84090.3_3_0_0.js";let i,o,c,k=Promise.all([(()=>{try{return S}catch{}})()]).then(async()=>{const u={name:"EntityListActions",props:{overflow:{type:Boolean,default:!1}}},p={key:0};function m(t,y,f,I,E,P){const d=s("KIcon"),_=s("KButton"),b=s("KDropdownMenu");return f.overflow?(l(),w(b,{key:1,"kpop-attributes":{placement:"bottomEnd"}},{items:a(()=>[n(t.$slots,"default")]),default:a(()=>[r(_,{"data-testid":"overflow-actions-button",class:"non-visual-button overflow-button",size:"small"},{icon:a(()=>[r(d,{icon:"more",color:"var(--black-400)",size:"16"})]),_:1})]),_:3})):(l(),v("span",p,[n(t.$slots,"default")]))}let e;i=g(u,[["render",m]]),o=[25,50,100,250,500,1e3],e="km-preference-list-page-size",c=z("preferences",{state:()=>{let t=Number.parseInt(localStorage.getItem(e)??"");return o.includes(t)||(t=100),{listPageSize:t}},actions:{setListPageSize(t){this.listPageSize=t,localStorage.setItem(e,t.toString())}}})});export{i as E,k as __tla,o as p,c as u};
