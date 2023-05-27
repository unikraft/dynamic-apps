/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{z as t,J as i,u as a,__tla as o}from"./index.84d84090.3_3_0_0.js";let s,h=Promise.all([(()=>{try{return o}catch{}})()]).then(async()=>{s={props:{entityWorkspace:{type:String,default:""}},computed:{...t(i,["workspace"]),...t(a,{perms:"permissions"}),rbacResourceEndpoint(){return this.resourceEndpoint},id(){return this.$route.params.id||"*"},hasCreatePerm(){return this.$rbac.isAllowed(this.perms,[{path:`/${this.rbacResourceEndpoint}/`,actions:["create"]}],this.entityWorkspace||this.workspace)},hasReadPerm(){return this.$rbac.isAllowed(this.perms,[{path:`/${this.rbacResourceEndpoint}/${this.id}`,actions:["read"]}],this.entityWorkspace||this.workspace)},hasUpdatePerm(){return this.$rbac.isAllowed(this.perms,[{path:`/${this.rbacResourceEndpoint}/${this.id}`,actions:["update"]}],this.entityWorkspace||this.workspace)},hasDeletePerm(){return this.$rbac.isAllowed(this.perms,[{path:`/${this.rbacResourceEndpoint}/${this.id}`,actions:["delete"]}],this.entityWorkspace||this.workspace)}},methods:{hasPerms(e,r=this.rbacResourceEndpoint){return this.$rbac.isAllowed(this.perms,[{path:r,actions:e}],this.entityWorkspace||this.workspace)}}}});export{s as R,h as __tla};
