/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{n as h,A,Z as v,J as p,aC as r,C as g,q as C,aE as d,y as f,u as E,__tla as S}from"./index.84d84090.3_3_0_0.js";let y,m,_,k=Promise.all([(()=>{try{return S}catch{}})()]).then(async()=>{y=()=>{const e=h();return{onCopySuccess:a=>{e.notify({type:"success",message:a.message})},onCopyError:a=>{e.notify({type:"danger",message:a.message})}}},_=()=>{var i;const e=A.getDecodedAuthDataFromStorage(),a=v(),t=p(),{infoDatastore:o}=r(a),{workspace:n}=r(t),s=f("config"),c=g(()=>s.ADMIN_API_URL),u=g(()=>{var l;return((l=o.value)==null?void 0:l.type)==="postgres"});return C({app:"kongManager",workspace:n.value,apiBaseUrl:c.value,requestHeaders:{"Cache-Control":"no-cache","X-Request-Source":"kong-manager","X-Kong-Manager-Version":d,[s.RBAC_USER_HEADER]:(i=e.currentUser)==null?void 0:i.username},isExactMatch:!u.value,disableSorting:!u.value})},m=(e,a)=>{const t=E(),o=p(),{permissions:n}=r(t),{workspace:s}=r(o),c=Array.isArray(a.action)?a.action:[a.action];return e.isAllowed(n.value,[{path:a.path,actions:c}],s.value)}});export{k as __tla,y as a,m as b,_ as u};
