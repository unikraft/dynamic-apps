/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

const u={computed:{redirectPath(){return this.$route.query.redirect},redirectRouteQuery(){return{redirect:this.redirectPath}},postDeletePath(){return this.$route.query.postDelete},postDeleteRouteQuery(){return{postDelete:this.postDeletePath}}},methods:{createRedirectRouteQuery(e=this.$route.fullPath){return{redirect:e}},createPostDeleteRouteQuery(e=this.postDeletePath||this.$route.fullPath){return{postDelete:e}},redirect(e=!1,t=!1){const r=e?this.$router.replace:this.$router.push;return this.redirectPath?(r(this.redirectPath),!0):t?(this.$router.go(-1),!0):!1}}};export{u as R};
