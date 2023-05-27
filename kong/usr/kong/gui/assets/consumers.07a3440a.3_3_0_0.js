/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

const s={0:"proxy",1:"developer",2:"admin"},t={0:"approved",1:"requested",2:"rejected",3:"revoked",4:"invited"},S=Object.keys(t).reduce(function(e,o,r){return e[t[r].toUpperCase()]=r,e},{});export{s as C,S,t as a};
