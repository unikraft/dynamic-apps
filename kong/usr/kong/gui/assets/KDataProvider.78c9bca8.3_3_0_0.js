/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

let a,i=(async()=>{a={name:"DataProvider",props:{url:{type:String,required:!1,default:null},workspace:{type:String,required:!1,default:""},fetchParams:{type:Object,required:!1,default:()=>({})},fetchOptions:{type:Object,required:!1,default:()=>({})}},emits:["resolve","reject"],data:function(){return{data:null,next:null,offset:null,size:1e3,loading:!0,error:null}},created(){return this.url?this.fetchData():(this.loading=!1,this.$emit("resolve"))},methods:{async fetchData(){const e={...this.fetchParams,size:this.size};do await this.fetchNext(e).then(t=>{this.data instanceof Array&&(e.offset=this.offset,this.data.push(...t))});while(this.next);this.data instanceof Array&&this.$emit("resolve",{data:this.data})},async fetchNext(e){return this.workspace&&(this.$api.workspace=this.workspace),await this.$api.findAll(this.url,e,this.fetchOptions).then(t=>(this.next=t.data.next,this.offset=t.data.offset,this.next&&!this.data&&(this.data=[]),!this.next&&!this.data?(this.data=t.data,this.$emit("resolve",t.data),[]):t.data.data)).catch(t=>{this.error=t,this.$emit("reject",t)}).finally(()=>{this.loading=!1})}},render(){return this.$slots.default({loading:this.loading,data:this.data,error:this.error})}}})();export{a as _,i as __tla};
