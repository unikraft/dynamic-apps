/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{C as a,aD as d,aw as h,__tla as D}from"./index.84d84090.3_3_0_0.js";let o,_=Promise.all([(()=>{try{return D}catch{}})()]).then(async()=>{o=()=>{const t=d(),l=h(),r=a(()=>t.query.redirect),s=a(()=>({redirect:r.value})),u=a(()=>t.query.postDelete),c=a(()=>({postDelete:u.value})),i=(e=t.fullPath)=>({redirect:e}),p=(e=u.value||t.fullPath)=>({postDelete:e}),v=(e=!1,y=!1)=>{const n=e?l.replace:l.push;return r.value?(n(r.value),!0):y?(l.go(-1),!0):!1};return{redirectPath:r.value,redirectRouteQuery:s.value,postDeletePath:u.value,postDeleteRouteQuery:c.value,createRedirectRouteQuery:i,createPostDeleteRouteQuery:p,redirect:v}}});export{_ as __tla,o as u};
