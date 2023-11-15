/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as k,H as b,z as E,Q as F,Y as $,aF as S,a4 as L,r as s,c as M,b as a,w as n,o as d,l as v,h as R,d as x,__tla as C}from"./index.84d84090.3_3_0_0.js";import{E as D,__tla as K}from"./EntityForm.c5492e4f.3_3_0_0.js";import{F as w,__tla as U}from"./FormActions.1911524f.3_3_0_0.js";import{F as A,__tla as H}from"./FormPage.4b74a91a.3_3_0_0.js";import{F as N}from"./FormActionsMixin.54cda7d6.3_3_0_0.js";import{R as P}from"./RedirectMixin.efeb36f2.3_3_0_0.js";import{s as I}from"./Keys.83356947.3_3_0_0.js";import{__tla as j}from"./monaco-editor.90904fcf.3_3_0_0.js";import{__tla as q}from"./ConfirmModalDialog.af276128.3_3_0_0.js";import{__tla as z}from"./EntityDeleteModal.673d985c.3_3_0_0.js";import{__tla as O}from"./EntityMixin.2764673d.3_3_0_0.js";import{__tla as Q}from"./EntityButton.1838e0e9.3_3_0_0.js";import{__tla as T}from"./EntityFilter.bf4158bc.3_3_0_0.js";import"./typedefs.6c779761.3_3_0_0.js";import"./transform.db23dc95.3_3_0_0.js";import"./marked.esm.77963db0.3_3_0_0.js";let l,V=Promise.all([(()=>{try{return C}catch{}})(),(()=>{try{return K}catch{}})(),(()=>{try{return U}catch{}})(),(()=>{try{return H}catch{}})(),(()=>{try{return j}catch{}})(),(()=>{try{return q}catch{}})(),(()=>{try{return z}catch{}})(),(()=>{try{return O}catch{}})(),(()=>{try{return Q}catch{}})(),(()=>{try{return T}catch{}})()]).then(async()=>{const m={name:"KeysForm",components:{EntityForm:D,PageHeader:b,FormActions:w},mixins:[A,N,P],props:{redirectRouteNames:{type:Object,default:()=>({})},keySetId:{type:String,required:!1,default:""}},emits:["clicked-submit","model-updated"],data(){return{fields:this.$route.params.fields,record:null,schema:I,originModel:null}},computed:{...E(F,{getSupportDocs:"entityDoc"}),docsLink(){return this.getSupportDocs("keys")},id(){return this.$route.params.id},title(){if(!this.isEditing)return"Create Keys";let t=$(this.record,"keys");return t?(S(t)&&(t=t.split("-")[0].trim()),`Edit Keys: ${t}`):"Edit keys"},resourceEndpoint(){var e;const t=((e=this.originModel)==null?void 0:e["set-id"])??this.keySetId;return t?`key-sets/${t}/keys`:this.isEditing&&this.fields&&this.fields.set_id?`key-sets/${this.fields.set_id}/keys`:"keys"}},methods:{createRecord(t){return this.$api.createRecord(this.resourceEndpoint,t).then(e=>{const i=this.redirectRouteNames.create;return i?i==="-1"?this.$router.go(-1):this.$router.push({name:i,params:this.$router.params}):(this.returnLink?this.$router.push({path:this.returnLink}):L(this.$router,201,this.redirectRoute)(e),e.data)})},formLoad(){return this.onFormLoad().then(t=>(this.record=t&&t.data,t))},handleModelUpdate(t,e){this.originalModel=e,this.$emit("model-updated",t)}}},c={class:"keys-form form-container"},u=x(" View documentation ");function h(t,e,i,W,o,r){const _=s("KExternalLink"),p=s("FormActions"),f=s("PageHeader"),y=s("EntityForm");return d(),M("section",c,[a(f,{title:r.title},{default:n(()=>[a(_,{href:r.docsLink},{default:n(()=>[u]),_:1},8,["href"]),t.isEditing?(d(),v(p,{key:0,"primary-disabled":t.isSaveActionDisabled,onSave:t.handleFormSave,onCancel:t.handleFormCancel},null,8,["primary-disabled","onSave","onCancel"])):R("",!0)]),_:1},8,["title"]),a(y,{ref:"form","is-editing":t.isEditing,"show-confirmation-dialog":t.isEditing,"prevent-submission-before-change":t.isEditing,schema:o.schema,fields:o.fields,"button-text":t.buttonText,"on-load":r.formLoad,"on-submit":t.onFormSubmit,"on-delete":t.onDeleteWhenEditing,"resource-endpoint":r.resourceEndpoint,"redirect-route-after-delete":{name:"keys"},entity:"keys","entity-name":"Key",onClickedSubmit:e[0]||(e[0]=g=>t.$emit("clicked-submit",g)),onModelUpdated:r.handleModelUpdate},null,8,["is-editing","show-confirmation-dialog","prevent-submission-before-change","schema","fields","button-text","on-load","on-submit","on-delete","resource-endpoint","onModelUpdated"])])}l=k(m,[["render",h]])});export{V as __tla,l as default};
