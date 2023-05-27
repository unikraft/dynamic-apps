/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

const o=({$route:l,name:a="",path:n="",fields:s={},query:t,redirect:u})=>({...a?{name:a}:{path:n},params:{fields:s,...l.params,returnLink:u||l.fullPath},query:{...t,...u?{redirect:u}:null}}),b=o;export{b};
