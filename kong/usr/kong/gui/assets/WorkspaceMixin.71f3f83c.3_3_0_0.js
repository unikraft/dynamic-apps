/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{z as r,J as c,m as i,Z as n,__tla as f}from"./index.84d84090.3_3_0_0.js";let o,g=Promise.all([(()=>{try{return f}catch{}})()]).then(async()=>{o={computed:{...r(c,["workspace","workspaces"])},methods:{...i(n,["getInfo"]),fetchWorkspace(){return this.$api.getWorkspace(this.workspace)},getDefaultConfig(){return this.getInfo().then(a=>a.data.configuration)},async getWorkspaceConfig(){const a=await this.fetchWorkspace(),e=await this.getDefaultConfig(),s={};return Object.keys(e).forEach(t=>{s[t]=a.config[t]!==null&&a.config[t]!==void 0?a.config[t]:e[t]}),Object.keys(a.config).forEach(t=>{s[t]||(s[t]=a.config[t])}),s},getWorkspaceList(){return Promise.all(this.workspaces.map(async a=>(await this.$api.query(`${a.name}/workspaces/${a.name}`)).data))}}}});export{o as W,g as __tla};
