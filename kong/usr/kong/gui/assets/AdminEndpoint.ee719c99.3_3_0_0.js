/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

const i={endpoint:{type:"checklist",multi:!0,multiSelect:!0,listBox:!0,styleClasses:"endpoints-list",transform(e){return e?e.join(","):null}},actions:{type:"checklist",values:["create","read","update","delete"],multi:!0,multiSelect:!0,listBox:!0,styleClasses:"permissions-list checklist",transform(e){return e?e.join(","):null}},negative:{type:"checkbox",default:!1},custom_endpoint:{label:"custom permission endpoint",type:"input",inputType:"text",styleClasses:"pr-4"},custom_actions:{label:"actions",type:"checklist",values:["create","read","update","delete"],multi:!0,multiSelect:!0,listBox:!0,styleClasses:"permissions-list checklist custom-actions",transform(e){return e?e.join(","):null}},custom_negative:{label:"custom endpoint negative",type:"checkbox",default:null}},o=function(e,n){let l=!1;const s=["endpoint"];for(let t=0;t<s.length;++t){if(e[s[t]]!==n[s[t]])return!1;l=e}return l};i.comparator=o;export{i as s};
