/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{c as E}from"./index.6d4e40f9.3_3_0_0.js";import{_ as v,H as F,z as S,Q as x,Y as L,aF as V,r as o,c as k,b as n,w as m,o as c,l as D,h as w,d as C,__tla as A}from"./index.84d84090.3_3_0_0.js";import{E as H,__tla as P}from"./EntityForm.c5492e4f.3_3_0_0.js";import{F as $,__tla as j}from"./FormActions.1911524f.3_3_0_0.js";import{F as z,__tla as B}from"./FormPage.4b74a91a.3_3_0_0.js";import{F as J}from"./FormActionsMixin.54cda7d6.3_3_0_0.js";import{v as i,a as K,__tla as O}from"./Vaults.d94f5874.3_3_0_0.js";import{__tla as Q}from"./monaco-editor.90904fcf.3_3_0_0.js";import{__tla as R}from"./ConfirmModalDialog.af276128.3_3_0_0.js";import{__tla as T}from"./EntityDeleteModal.673d985c.3_3_0_0.js";import{__tla as W}from"./EntityMixin.2764673d.3_3_0_0.js";import{__tla as Y}from"./EntityButton.1838e0e9.3_3_0_0.js";import{__tla as q}from"./EntityFilter.bf4158bc.3_3_0_0.js";import"./RedirectMixin.efeb36f2.3_3_0_0.js";import"./typedefs.6c779761.3_3_0_0.js";let u,G=Promise.all([(()=>{try{return A}catch{}})(),(()=>{try{return P}catch{}})(),(()=>{try{return j}catch{}})(),(()=>{try{return B}catch{}})(),(()=>{try{return O}catch{}})(),(()=>{try{return Q}catch{}})(),(()=>{try{return R}catch{}})(),(()=>{try{return T}catch{}})(),(()=>{try{return W}catch{}})(),(()=>{try{return Y}catch{}})(),(()=>{try{return q}catch{}})()]).then(async()=>{const _={name:"VaultsForm",components:{EntityForm:H,PageHeader:F,FormActions:$},mixins:[z,J],data(){return{resourceEndpoint:"vaults",record:null}},computed:{...S(x,{getSupportDocs:"entityDoc"}),docsLink(){return this.getSupportDocs("vaults")},id(){return this.$route.params.id},title(){if(!this.isEditing)return"Create Vaults";let t=L(this.record,"vaults");return t?(V(t)&&(t=t.split("-")[0].trim()),`Edit Vaults: ${t}`):"Edit Vaults"},schema(){return this.isEditing?{...i,name:{...i.name,disabled:!0}}:i}},methods:{formLoad(){return this.onFormLoad().then(t=>(this.record=t&&t.data,t))},onSubmit(t,s=this.redirectRoute){const e=E(t),l=(K[t.name]??[]).map(r=>r.name);return Object.keys(e.config??[]).forEach(r=>{l.includes(r)||(e.config[r]=void 0)}),this.onFormSubmit(e,s)}}},d={class:"vaults-form form-container"},h=C(" View documentation ");function f(t,s,e,l,r,a){const p=o("KExternalLink"),y=o("FormActions"),g=o("PageHeader"),b=o("EntityForm");return c(),k("section",d,[n(g,{title:a.title},{default:m(()=>[n(p,{href:a.docsLink},{default:m(()=>[h]),_:1},8,["href"]),t.isEditing?(c(),D(y,{key:0,"primary-disabled":t.isSaveActionDisabled,onSave:t.handleFormSave,onCancel:t.handleFormCancel},null,8,["primary-disabled","onSave","onCancel"])):w("",!0)]),_:1},8,["title"]),n(b,{ref:"form","is-editing":t.isEditing,"show-confirmation-dialog":t.isEditing,"prevent-submission-before-change":t.isEditing,schema:a.schema,"button-text":t.buttonText,"on-load":a.formLoad,"on-submit":a.onSubmit,"on-delete":t.onDeleteWhenEditing,"resource-endpoint":r.resourceEndpoint,"redirect-route-after-delete":{name:"vaults"},entity:"vaults","entity-name":"Vaults"},null,8,["is-editing","show-confirmation-dialog","prevent-submission-before-change","schema","button-text","on-load","on-submit","on-delete","resource-endpoint"])])}u=v(_,[["render",f]])});export{G as __tla,u as default};
