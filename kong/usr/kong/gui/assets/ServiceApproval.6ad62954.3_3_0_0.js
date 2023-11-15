/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{N as B,M as J,b as s,d as o,z as f,u as W,Q as Y,at as z,_ as F,r as p,o as r,c as h,a as d,R as g,U as w,w as n,t as u,h as m,V as _,l as y,E as b,p as X,e as Z,__tla as tt}from"./index.84d84090.3_3_0_0.js";import{C as et,__tla as at}from"./ConfirmModalDialog.af276128.3_3_0_0.js";import{E as it,__tla as st}from"./EntityList.9d5d453d.3_3_0_0.js";import{W as ot,__tla as nt}from"./WorkspaceMixin.71f3f83c.3_3_0_0.js";import{E as ct,__tla as lt}from"./EntityConfiguration.03651df4.3_3_0_0.js";import{V as rt,__tla as pt}from"./VNode.44f1f698.3_3_0_0.js";import{c as dt}from"./index.6d4e40f9.3_3_0_0.js";let E,ht=Promise.all([(()=>{try{return tt}catch{}})(),(()=>{try{return at}catch{}})(),(()=>{try{return st}catch{}})(),(()=>{try{return nt}catch{}})(),(()=>{try{return lt}catch{}})(),(()=>{try{return pt}catch{}})()]).then(async()=>{const k={id:{label:"ID"},application:{fields:{id:{label:"ID"},name:{label:"Name"},consumer:{label:"Consumer"},developer:{label:"Developer"},redirect_uri:{label:"Redirect URI"}}},status:{label:"Status"},service:{label:"Gateway Service"}},R=(()=>dt(k))(),I={name:"ServiceApproval",components:{ConfirmModalDialog:et,EntityList:it,EntityConfiguration:ct,VNode:rt},mixins:[B,ot],props:{serviceId:{type:String,default:""},applicationId:{type:String,default:""}},data(){return{configSchema:R,tabs:[{hash:"#approved",title:"Approved",vitals:!0},{hash:"#revoked",title:"Revoked"},{hash:"#rejected",title:"Rejected"}],isLoading:!0,portalEnabled:null,portalAuthEnabled:null,actionItem:null,portalUrl:null,customAction:{getText:()=>{}},notifications:{APPROVED:!1,REQUESTED:!1,REJECTED:!1,REVOKED:!1,INVITED:!1},servicesById:{},machine:J({id:"developerFormMachine",initial:"loading",states:{loading:{on:{RESOLVE:"idle"}},idle:{on:{type:"final"}}}}),states:{APPROVED:{value:0,title:"Approved",text:"Applications approved.",shouldShowUpdate:!1,customActions:[{getText:t=>s("p",null,[o("Access for "),s("strong",null,[t["application.name"]]),o(' will be put \u201COn-Hold\u201D. They will NOT be able to continue using your Gateway Service via this Application. You can undo this by clicking "Re-Approve" in the "Revoked" list.')]),action:"Revoke",variant:"link",class:"revoke entity-action",type:"REVOKED"}],noResults:{title:"No Approved Applications",text:"Applications that are approved for Dev Portal access appear here.",ctaText:"Invite a Developer",ctaIsHidden:!0}},REVOKED:{value:3,title:"Revoked",text:"Applications revoked.",shouldShowUpdate:!1,customActions:[{getText:t=>s("p",null,[o("Are you sure you want to give access to "),s("strong",null,[t["application.name"]]),o("?")]),action:"Re-Approve",variant:"link",class:"re-approve entity-action",type:"APPROVED"}],noResults:{title:"No Revoked Applications",text:"Applications that have been revoked appear here. When an Application is revoked, access to the the Gateway Service is put on hold.",ctaIsHidden:!0}},REJECTED:{value:2,title:"Rejected",text:"Applications rejected.",shouldShowUpdate:!1,customActions:[{getText:t=>s("p",null,[o("Are you sure you want to give access to "),s("strong",null,[t["application.name"]]),o("?")]),action:"Approve",variant:"link",class:"approve entity-action",type:"APPROVED"}],noResults:{title:"No Rejected Applications",text:`Applications that have been rejected appear here. Rejected Applications don't have access to your Gateway Service. They can't request access again. You can reject an Application from the "Requested Access" or "Revoked" tab.`,ctaIsHidden:!0}},REQUESTED:{value:1,title:"Requested Access",text:"Applications requesting access.",shouldShowUpdate:!1,shouldShowDelete:!1,customActions:[{getText:()=>{},action:"Approve",skipModal:!0,variant:"link",class:"approve entity-action",type:"APPROVED"},{getText:t=>s("p",null,[o("Reject "),s("strong",null,[t["application.name"]]),o(" from your Dev Portal? They will not be able to request access again.")]),action:"Reject",variant:"link",class:"reject link-danger entity-action entity-action-danger",type:"REJECTED"}],noResults:{title:"No Requests for Access",text:"Applications that have completed the registration form and are waiting for your approval or rejection appear here.",ctaIsHidden:!0}}},recordInView:null}},computed:{...f(W,{perms:"permissions"}),rbacPath(){return this.serviceId?"services/*/application_instances":"applications/*/application_instances"},entityPath(){return this.serviceId?`services/${this.serviceId}/application_instances`:`applications/${this.applicationId}/application_instances`},isAllowedToDelete(){return this.$rbac.isAllowed(this.perms,[{path:this.rbacPath,actions:["delete"]}],this.$route.params.workspace)},isAllowedToUpdate(){return this.$rbac.isAllowed(this.perms,[{path:this.rbacPath,actions:["update"]}],this.$route.params.workspace)},entityListOptions(){const t={entity:this.entityPath,entityName:"Application",params:{status:this.activeState.value},emptyTitle:this.activeState.noResults.title,helpMessage:this.activeState.noResults.text,showCtaLink:!1,fields:{"application.name":{searchable:!1,label:"Application"},id:{searchable:!0}}};return this.serviceId?t.fields.email={searchable:!0,label:"developer email"}:t.fields.service={searchable:!0,link:!0},t},activeState(){return this.states[this.activeIndex]},activeIndex(){return this.$route.hash&&this.$route.hash.slice(1).toUpperCase()||"APPROVED"},...f(Y,{portalDocs:"docsPortal"})},async mounted(){this.serviceId||(await this.$api.findAll("plugins")).data.data.filter(e=>e.name==="application-registration"&&e.enabled===!0).forEach(e=>{e.service&&e.service.id&&(this.servicesById[e.service.id]=e.config.display_name)}),this.transition("RESOLVE");const t=await this.getWorkspaceConfig();if(this.portalUrl=z(t,this.workspace),this.portalAuthEnabled=t.portal_auth,this.portalEnabled=t.portal,this.isLoading=!1,this.portalEnabled&&this.activeIndex!=="REQUESTED"){const e=await this.$api.findAll(this.entityPath,{status:1});e&&e.data&&e.data.data.length&&(this.notifications.REQUESTED=!0)}},methods:{tabChange(){this.isLoading=!0,this.notifications[this.activeIndex]=!1},setCustomAction(t,e){this.customAction=e,this.actionItem=t,e.skipModal&&this.makeCustomAction()},makeCustomAction(){const t=this.customAction.type,e=this.states[this.customAction.type].value;this.$api.updateRecord(this.entityPath,this.actionItem.id,{status:e}).then(()=>{this.$refs.applicationList.reloadData(),this.notifications[t]=!0}),this.dismissCustomAction()},dismissCustomAction(){this.customAction={getText:()=>{}},this.actionItem=null},detailTransform(t){const e={0:"Approved",1:"Requested Access",2:"Rejected",3:"Revoked"};return t.status=e[t.status],t.application.developer={id:t.application.developer.id,email:t.application.developer.email,status:e[t.application.developer.status],meta:t.application.developer.meta},t},toggleConfig(t=null){this.recordInView=t}}},C=t=>(X("data-v-c21354c3"),t=t(),Z(),t),S={class:"applications-portal-list"},x=C(()=>d("h5",{class:"mb-5"}," Gateway Service Contracts ",-1)),D={class:"row"},T={class:"col"},P={class:"nav nav-tabs mb-2"},V=["data-testid"],O={key:0,class:"notification"},U={key:"email"},L=o(" View "),$={key:0,"data-testid":"goto-service"};function j(t,e,ut,vt,l,i){const v=p("router-link"),A=p("KDropdownItem"),N=p("VNode"),M=p("ConfirmModalDialog"),q=p("EntityList"),K=p("KSkeleton"),G=p("EntityConfiguration"),H=p("KSlideout");return r(),h("section",S,[x,d("div",D,[d("div",T,[d("ul",P,[(r(!0),h(g,null,w(l.states,(a,c)=>(r(),h("li",{key:c,"data-testid":a.title,class:"nav-item",onClick:e[0]||(e[0]=Q=>i.tabChange())},[s(v,{to:{hash:`#${c.toLowerCase()}`},class:_([{active:c===i.activeIndex},"nav-link"])},{default:n(()=>[o(u(a.title)+" ",1),l.notifications[c]?(r(),h("span",O)):m("",!0)]),_:2},1032,["to","class"])],8,V))),128))]),t.currentState==="idle"?(r(),y(q,{ref:"applicationList",key:i.activeIndex,options:i.entityListOptions,"enable-entity-actions":!0,"overflow-actions":!0,"show-view-action":!1,"view-action-fields":["application.name"],"view-action-handler":a=>i.toggleConfig({item:a}),"show-update-action":i.activeState.shouldShowUpdate,"show-delete-action":i.isAllowedToDelete&&i.activeState.shouldShowDelete,"disable-row-click":!0},{header:n(a=>[d("div",b(a,{class:"header-text"}),[d("p",null,u(i.activeState.text),1)],16)]),service:n(({item:a})=>[s(v,{to:{name:"show-service",params:{id:a.service.id}}},{default:n(()=>[o(u(l.servicesById[a.service.id]),1)]),_:2},1032,["to"])]),email:n(({item:a})=>[d("div",U,[s(v,{to:{name:"show-developer",params:{id:a.application.developer.id}},class:"d-inline-flex","data-testid":"email"},{default:n(()=>[o(u(a.application.developer.email),1)]),_:2},1032,["to"])])]),extraActions:n(a=>[s(A,{"data-testaction":"menu-view","data-testid":"config-toggle",class:"w-full view-btn entity-action",onClick:c=>i.toggleConfig(a)},{default:n(()=>[L]),_:2},1032,["onClick"]),i.isAllowedToUpdate?(r(!0),h(g,{key:0},w(i.activeState.customActions,c=>(r(),y(A,{key:c.action,class:_(c.class),"data-testaction":`menu-${c.action.toLowerCase()}`,onClick:Q=>i.setCustomAction(a.item,c)},{default:n(()=>[o(u(c.action),1)]),_:2},1032,["class","data-testaction","onClick"]))),128)):m("",!0)]),customModal:n(a=>[s(M,b(a,{"entity-name":i.entityListOptions.entityName,action:l.customAction.action,"proceed-text":l.customAction.action,visible:!!l.actionItem,class:"customModal",onOk:e[1]||(e[1]=c=>i.makeCustomAction()),onCancel:e[2]||(e[2]=c=>i.dismissCustomAction())}),{"body-text":n(()=>[s(N,{render:()=>l.customAction.getText(l.actionItem)},null,8,["render"])]),_:2},1040,["entity-name","action","proceed-text","visible"])]),_:1},8,["options","view-action-fields","view-action-handler","show-update-action","show-delete-action"])):(r(),y(K,{key:1,type:"table"}))])]),s(H,{"is-visible":!!l.recordInView,onClose:e[3]||(e[3]=a=>i.toggleConfig())},{default:n(()=>[l.recordInView?(r(),y(G,{key:0,record:l.recordInView.item,"config-schema":l.configSchema,"transform-record":i.detailTransform,entity:"Application Contract","entity-name":"application contract"},{service:n(({value:a})=>[a.id?(r(),h("div",$,[s(v,{to:{name:"show-service",params:{id:a.id}}},{default:n(()=>[o(u(a.id),1)]),_:2},1032,["to"])])):m("",!0)]),_:1},8,["record","config-schema","transform-record"])):m("",!0)]),_:1},8,["is-visible"])])}E=F(I,[["render",j],["__scopeId","data-v-c21354c3"]])});export{E as S,ht as __tla};
