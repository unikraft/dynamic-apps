/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{F as nt,__tla as lt}from"./FetchWrapper.51724faf.3_3_0_0.js";import{D as ct,T as dt,__tla as ut}from"./TagsBlock.4b7d5635.3_3_0_0.js";import{_ as E,r as i,o,c as h,l as d,h as m,a as y,t as M,aN as ht,H as mt,S as pt,N as yt,z as C,u as _t,J as gt,Q as ft,m as vt,n as Dt,b as n,w as c,R as b,K as bt,E as wt,d as _,Y as kt,aF as Pt,__tla as $t}from"./index.84d84090.3_3_0_0.js";import{D as Rt,__tla as At}from"./DatetimeBlock.a1dc28a1.3_3_0_0.js";import{S as Et,__tla as Ct}from"./StatusBlock.74ff673e.3_3_0_0.js";import{b as Mt}from"./buildRoute.1ddadad0.3_3_0_0.js";import{B as St,__tla as Lt}from"./Breadcrumbs.6127883e.3_3_0_0.js";import{D as Ut,__tla as xt}from"./DetailContainer.85becad9.3_3_0_0.js";import{E as Bt,__tla as Vt}from"./EntityConfiguration.03651df4.3_3_0_0.js";import{S as qt,__tla as Nt}from"./StatusCodesWrapper.94765128.3_3_0_0.js";import{d as Tt}from"./chartHelpers.1bf67333.3_3_0_0.js";import{S as Ot,__tla as It}from"./ServiceApproval.6ad62954.3_3_0_0.js";import{b as Qt,__tla as Ft}from"./EntityToggleBadge.6a1cd1fb.3_3_0_0.js";import{E as S,__tla as Ht}from"./EntityDeleteModal.673d985c.3_3_0_0.js";import{E as Wt,__tla as jt}from"./EntityListEmptyState.9b958bba.3_3_0_0.js";import{R as L}from"./RedirectMixin.efeb36f2.3_3_0_0.js";import{e as U}from"./extensionsMap.44b2ff6b.3_3_0_0.js";import{R as Kt,__tla as Gt}from"./RbacPermMixin.3a5f32ef.3_3_0_0.js";import{c as zt}from"./Service.872611d7.3_3_0_0.js";import{E as Jt,__tla as Yt}from"./EntityMixin.2764673d.3_3_0_0.js";import{__tla as Xt}from"./KDataProvider.78c9bca8.3_3_0_0.js";import{__tla as Zt}from"./monaco-editor.90904fcf.3_3_0_0.js";import"./icon-help.699f8c28.3_3_0_0.js";import{__tla as te}from"./ChartDataController.a765a4e0.3_3_0_0.js";import{__tla as ee}from"./ChartHeader.0a2c695d.3_3_0_0.js";import{__tla as ae}from"./TimeFramePicker.465b75eb.3_3_0_0.js";import"./TimeFrames.25a2a20b.3_3_0_0.js";import{__tla as re}from"./VitalsDisabled.f093ed15.3_3_0_0.js";import{__tla as ie}from"./LineChartWrapper.be3dd56e.3_3_0_0.js";import{__tla as se}from"./ConfirmModalDialog.af276128.3_3_0_0.js";import{__tla as oe}from"./EntityList.9d5d453d.3_3_0_0.js";import{__tla as ne}from"./preferences.ea825a88.3_3_0_0.js";import{__tla as le}from"./WorkspaceMixin.71f3f83c.3_3_0_0.js";import{__tla as ce}from"./VNode.44f1f698.3_3_0_0.js";import"./index.6d4e40f9.3_3_0_0.js";import"./typedefs.6c779761.3_3_0_0.js";import"./transform.db23dc95.3_3_0_0.js";import"./marked.esm.77963db0.3_3_0_0.js";import{__tla as de}from"./EntityButton.1838e0e9.3_3_0_0.js";import{__tla as ue}from"./EntityFilter.bf4158bc.3_3_0_0.js";let x,he=Promise.all([(()=>{try{return lt}catch{}})(),(()=>{try{return ut}catch{}})(),(()=>{try{return $t}catch{}})(),(()=>{try{return At}catch{}})(),(()=>{try{return Ct}catch{}})(),(()=>{try{return Lt}catch{}})(),(()=>{try{return xt}catch{}})(),(()=>{try{return Vt}catch{}})(),(()=>{try{return Nt}catch{}})(),(()=>{try{return It}catch{}})(),(()=>{try{return Ft}catch{}})(),(()=>{try{return Ht}catch{}})(),(()=>{try{return jt}catch{}})(),(()=>{try{return Gt}catch{}})(),(()=>{try{return Yt}catch{}})(),(()=>{try{return Xt}catch{}})(),(()=>{try{return Zt}catch{}})(),(()=>{try{return te}catch{}})(),(()=>{try{return ee}catch{}})(),(()=>{try{return ae}catch{}})(),(()=>{try{return re}catch{}})(),(()=>{try{return ie}catch{}})(),(()=>{try{return se}catch{}})(),(()=>{try{return oe}catch{}})(),(()=>{try{return ne}catch{}})(),(()=>{try{return le}catch{}})(),(()=>{try{return ce}catch{}})(),(()=>{try{return de}catch{}})(),(()=>{try{return ue}catch{}})()]).then(async()=>{const B=e=>({http:"http",https:"https",tcp:"tcp",tls:"tcp+tls",grpc:"grpc",grpcs:"grpcs",udp:"udp",ws:"ws",wss:"wss"})[e],V={name:"HostBlock",props:{protocol:{type:String,required:!0},host:{type:String,required:!0},port:{type:Number,default:null},path:{type:String,required:!1,default:""}},computed:{endpoint(){const{protocol:e,host:r,port:s,path:u}=this;return`${B(e)}://${r}${s?`:${s}`:""}${u||""}`}}},q={class:"host d-flex align-items-center"},N={class:"mono"};function T(e,r,s,u,t,a){const p=i("KIcon");return o(),h("div",q,[s.protocol.includes("s")?(o(),d(p,{key:0,icon:"lock",width:"12",height:"16","view-box":"0 0 12 16",alt:"protocol",class:"mr-2"})):m("",!0),y("span",N,M(a.endpoint),1)])}const O=E(V,[["render",T],["__scopeId","data-v-4852c0b2"]]),I={name:"DocumentationWidget",components:{MonacoEditor:ht,PageHeader:mt,EntityListEmptyState:Wt,SupportText:pt,EntityDeleteModal:S},mixins:[yt,L],props:{entityPath:{type:String,required:!0},entityQuery:{type:Object,default:()=>{}}},emits:["document-change"],data(){return{isLoading:!0,document:null,deleteModalModel:null,skeletonProps:{"table-rows":2,"table-columns":3,type:"table"},monacoOpts:{automaticLayout:!0,theme:"vs-light",readOnly:!0},monacoDefaultLanguage:"html",monacoLanguage:"html"}},computed:{...C(_t,{perms:"permissions"}),...C(gt,["workspaceConfig"]),...C(ft,{portalDocs:"docsPortal"}),documentDocsUrl(){return`${this.portalDocs.url}/applications/managing-applications/#add-a-document-to-your-service`},canCreate(){return this.$rbac.isAllowed(this.perms,[{path:this.entityPath,actions:["create"]},{path:this.entityPath,actions:["create"]}],this.$route.params.workspace)},canRead(){return this.$rbac.isAllowed(this.perms,[{path:this.entityPath,actions:["read"]}],this.$route.params.workspace)},canDelete(){return this.$rbac.isAllowed(this.perms,[{path:this.entityPath,actions:["delete"]}],this.$route.params.workspace)},portalEnabled(){return this.workspaceConfig.portal}},watch:{document:{handler(e){this.$emit("document-change",e&&e.document)},deep:!0}},async mounted(){await this.fetchDocument()},methods:{...vt(Dt,["notify"]),createEntityPath(){return{path:`/${this.$route.params.workspace}/services/create-documentation/`,query:{...this.entityQuery,...this.createRedirectRouteQuery()}}},async fetchDocument(){try{const e=await this.$api.findAll(this.entityPath);if(e.data&&Array.isArray(e.data.data)&&e.data.data.length>0){const r=e.data.data[0];this.document={document:r};const s=await this.$api.findRecord("files",r.path);this.document.content=s.data&&s.data.contents||"";const u=r.path.split(".");u.length<1&&(this.monacoLanguage=this.monacoDefaultLanguage);const t=u.splice(-1)[0].toLowerCase();U[t]?this.monacoLanguage=U[t]:this.monacoLanguage=t}else this.document=null}catch(e){console.error(e)}finally{this.isLoading=!1}},confirmDelete(){this.document!==null&&(this.deleteModalModel={record:this.document.document})},onAfterDelete(){this.fetchDocument()},handleUpdateAction(){this.$router.push({path:`/${this.$route.params.workspace}/portal-editor/${this.document.document.path}`,query:{editorOpener:this.$route.fullPath}})}}},Q={class:"document-widget"},F=_(" New Document "),H=_(" Delete Document "),W=_(" Open Editor "),j=_(" Allows Dev Portal users to easily register Application Contracts for their applications from the documentation page. "),K=_(" Learn more "),G={key:2,class:"column"};function z(e,r,s,u,t,a){const p=i("KButton"),w=i("KExternalLink"),k=i("SupportText"),P=i("PageHeader"),$=i("KSkeleton"),v=i("RbacEmptyList"),D=i("EntityListEmptyState"),R=i("MonacoEditor"),A=i("EntityDeleteModal");return o(),h("section",Q,[n(P,{title:"Document"},{"below-title":c(()=>[n(k,null,{default:c(()=>[y("p",null,[j,n(w,{href:a.documentDocsUrl},{default:c(()=>[K]),_:1},8,["href"])])]),_:1})]),default:c(()=>[t.isLoading?m("",!0):(o(),h(b,{key:0},[t.document===null&&a.canCreate?(o(),d(p,{key:0,"data-testid":"service-document-new",to:a.createEntityPath(),appearance:"primary"},{default:c(()=>[F]),_:1},8,["to"])):m("",!0),t.document!==null?(o(),h(b,{key:1},[a.canDelete?(o(),d(p,{key:0,class:"mr-2","data-testid":"service-document-delete",type:"button",appearance:"danger",onClick:a.confirmDelete},{default:c(()=>[H]),_:1},8,["onClick"])):m("",!0),n(p,{"data-testid":"service-document-open-editor",appearance:"primary",onClick:a.handleUpdateAction},{default:c(()=>[W]),_:1},8,["onClick"])],64)):m("",!0)],64))]),_:1}),y("div",null,[t.isLoading?(o(),d($,bt(wt({key:0},t.skeletonProps)),null,16)):a.portalEnabled?(o(),h(b,{key:1},[a.canRead?t.document===null?(o(),h(b,{key:1},[a.canCreate?(o(),d(D,{key:0,"cta-path":a.createEntityPath(),"cta-text":"New Document",message:"Add a Document to this Gateway Service.",title:"Add a new Document",transparent:""},null,8,["cta-path"])):(o(),d(v,{key:1}))],64)):(o(),h("div",G,[n(R,{ref:"editor",modelValue:t.document.content,"onUpdate:modelValue":r[0]||(r[0]=g=>t.document.content=g),options:t.monacoOpts,language:t.monacoLanguage,theme:"vs-light",class:"editor monaco"},null,8,["modelValue","options","language"])])):(o(),d(v,{key:0}))],64)):(o(),d(D,{key:2,"cta-path":{path:"/portal/overview"},"cta-text":"Enable Portal",message:"Enable Portal to add a Document to this Gateway Service.",title:"Portal Disabled"}))]),n(A,{modelValue:t.deleteModalModel,"onUpdate:modelValue":r[1]||(r[1]=g=>t.deleteModalModel=g),entity:s.entityPath,"entity-name":"service document","modal-id":"deleteModal",class:"defaultModal",onAfterDelete:a.onAfterDelete},null,8,["modelValue","entity","onAfterDelete"])])}const J=E(I,[["render",z],["__scopeId","data-v-89b63944"]]),Y={name:"ServiceShow",components:{FetchWrapper:nt,DetailsHeader:ct,HostBlock:O,DatetimeBlock:Rt,Breadcrumbs:St,StatusCodesWrapper:qt,StatusBlock:Et,TagsBlock:dt,ServiceApproval:Ot,EntityToggleModal:Qt,EntityDeleteModal:S,DocumentationWidget:J,DetailContainer:Ut,EntityConfiguration:Bt},mixins:[Jt,Kt,L],props:{entity:{type:Object,default:()=>({id:void 0,name:"Gateway Service",path:"service",rootPath:"services",createRouteName:null})},pluginRouteNames:{type:Object,default:()=>({selectRouteName:"select-plugin",viewRouteName:"view-plugin"})},hideBreadcrumbs:{type:Boolean,default:!1},hideTitle:{type:Boolean,default:!1}},data(){return{record:null,editRoute:{name:"update-service"},infoTexts:{statusCodes:Tt.statusCodesService},skeletonProps:{"table-rows":2,"table-columns":3,type:"table"},plugins:[],toggleModalVisible:!1,deleteModalModel:null,redirectRouteAfterDelete:{name:"services"},configSchema:zt,serviceDocument:null}},computed:{resourceEndpoint(){return this.entity.rootPath},actions(){return[{name:"Edit configuration",testAction:"action-edit",isAllowed:this.hasUpdatePerm,handler:this.handleEdit},{name:"Add route",divider:this.hasUpdatePerm,testAction:"action-add-route",isAllowed:this.canCreateRoutes,handler:this.addRoute},{name:"Install plugin",divider:this.hasUpdatePerm&&!this.canCreateRoutes,testAction:"action-install-plugin",isAllowed:this.canCreatePlugins,handler:this.installPlugin},{name:this.serviceDocument===null?"Add document":"Replace document",divider:this.hasUpdatePerm&&!this.canCreateRoutes&&!this.canCreatePlugins,testAction:"action-add-document",isAllowed:this.canCreateDocuments,handler:this.addDocument},{name:this.record&&this.record.enabled?"Disable":"Enable",divider:this.canCreateRoutes||this.canCreatePlugins||this.canCreateDocuments,testAction:"action-disable",isAllowed:this.hasUpdatePerm,handler:()=>{this.toggleModalVisible=!0}},{name:"Delete",divider:this.canCreateRoutes||this.canCreatePlugins||this.canCreateDocuments||this.hasUpdatePerm,testAction:"action-delete",isAllowed:this.hasDeletePerm,dangerous:!0,handler:this.confirmDelete}]},id(){return this.record&&this.record.id||this.entity.id||this.$route.params.id},titleMapping(){let e=kt(this.record,"services")||this.id;return Pt(e)&&(e=e.split("-")[0].trim()),{id:e}},primaryKeyDisplay(){return this.entity.id||this.record&&(this.record.name||this.record.id)},entity_id(){return this.id+","+(this.record&&this.record.name||"")},entityQuery(){return{entity_id:this.entity_id,entity_type:"service_id"}},currentEntity(){return{id:this.record.name??this.id,name:"service"}},fields(){return{"service-id":this.id,"service-name":this.title}},title(){return this.record&&this.record.name||""},chartDataUrls(){return{statusCodes:`status_codes/by_service?service_id=${this.id}`}},documentEntityPath(){return`${this.entity.rootPath}/${this.id}/document_objects`},hasAppRegistration(){return!this.plugins||!this.plugins.data?!1:this.plugins.data.data.some(e=>e.name==="application-registration"&&e.enabled===!0&&e.service&&e.service.id===this.id)},canCreateRoutes(){return this.hasPerms(["create"],`${this.resourceEndpoint}/${this.id}/routes`)},canCreatePlugins(){return this.hasPerms(["create"],`${this.resourceEndpoint}/${this.id}/plugins`)},canCreateDocuments(){return this.hasPerms(["create"],"document_objects")},navItems(){return[{key:"show-service",label:"Configuration"},{key:"service-analytics",label:"Analytics"},{key:"service-routes",label:"Routes"},{key:"service-plugins",label:"Plugins"},{key:"service-documents",label:"Document"},{key:"service-applications",label:"Applications",hidden:!this.hasAppRegistration}]}},watch:{documentEntityPath:{async handler(){const e=await this.$api.findAll(this.documentEntityPath);e.data&&Array.isArray(e.data.data)&&e.data.data.length>0?this.serviceDocument=e.data.data[0]:this.serviceDocument=null},immediate:!0}},async mounted(){this.plugins=await this.$api.findAll("plugins")},methods:{buildRouteFor({name:e,path:r,redirect:s,query:u}){const{entityQuery:t,$route:a}=this;return Mt({$route:a,name:e,path:r,fields:{service_id:this.id},query:{...t,...u},redirect:s})},handleEdit(){this.$router.push({name:this.editRoute.name,params:this.editRoute.params||{id:this.record.id,returnLink:this.$route.fullPath},query:{...this.editRoute.query,...this.createRedirectRouteQuery(),...this.createPostDeleteRouteQuery()}})},addRoute(){this.$router.push(this.buildRouteFor({name:this.entity.createRouteName,path:`/${this.$route.params.workspace}/routes/create`,redirect:this.$router.resolve({name:"service-routes",params:{id:this.id}}).path}))},installPlugin(){this.$router.push(this.buildRouteFor({name:this.pluginRouteNames.selectRouteName,path:`/${this.$route.params.workspace}/plugins/select`,redirect:this.$router.resolve({name:"service-plugins",params:{id:this.id}}).path}))},addDocument(){this.$router.push(this.buildRouteFor({path:`/${this.$route.params.workspace}/services/create-documentation/`,redirect:this.$router.resolve({name:"service-documents",params:{id:this.id}}).path,query:{...this.serviceDocument!==null?{replace:!0}:null}}))},confirmToggle(){this.toggleModalModel={record:this.record,nextState:!this.record.enabled}},confirmDelete(){this.deleteModalModel={record:this.record}}}},X={class:"service-details"},Z={class:"d-block mt-4"},tt={class:"flex items-center justify-between mb-4 gap-8"},et={class:"flex items-center gap-8"};function at(e,r,s,u,t,a){const p=i("Breadcrumbs"),w=i("HostBlock"),k=i("DatetimeBlock"),P=i("StatusBlock"),$=i("TagsBlock"),v=i("DetailsHeader"),D=i("EntityConfiguration"),R=i("StatusCodesWrapper"),A=i("DocumentationWidget"),g=i("ServiceApproval"),rt=i("DetailContainer"),it=i("FetchWrapper"),st=i("EntityToggleModal"),ot=i("EntityDeleteModal");return o(),h("div",null,[s.hideBreadcrumbs?m("",!0):(o(),d(p,{key:0,"title-mapping":a.titleMapping},null,8,["title-mapping"])),n(it,{deps:{navItems:a.navItems},url:`${a.resourceEndpoint}/${a.id}`,"skeleton-props":t.skeletonProps,onResolve:r[3]||(r[3]=l=>t.record=l)},{default:c(()=>[y("section",X,[n(v,{title:a.title,record:t.record,"hide-title":s.hideTitle,entity:{...s.entity,name:s.entity.name.toLowerCase(),id:a.id},actions:a.actions},{"below-title":c(()=>[y("div",Z,[y("div",tt,[n(w,{entity:t.record,protocol:t.record.protocol,host:t.record.host,port:t.record.port,path:t.record.path},null,8,["entity","protocol","host","port","path"]),n(k,{record:t.record},null,8,["record"])]),y("div",et,["enabled"in t.record?(o(),d(P,{key:0,entity:s.entity.rootPath,record:t.record,"entity-name":"service",onUpdateRecord:r[0]||(r[0]=(l,f)=>t.record[l]=f)},null,8,["entity","record"])):m("",!0),t.record.tags&&t.record.tags.length?(o(),d($,{key:1,tags:t.record.tags},null,8,["tags"])):m("",!0)])])]),_:1},8,["title","record","hide-title","entity","actions"])]),n(rt,{entity:s.entity,items:a.navItems,"entity-name":"service"},{"show-service":c(()=>[n(D,{record:t.record,"config-schema":t.configSchema,"edit-route":t.editRoute,entity:"services","entity-name":"service","flatten-actions":"",onUpdateRecord:r[1]||(r[1]=(l,f)=>t.record[l]=f)},{tls_verify:c(({value:l})=>[_(M(l===null?"Use default system setting":l?"On":"Off"),1)]),_:1},8,["record","config-schema","edit-route"])]),"service-analytics":c(()=>[n(R,{entity:a.currentEntity,"info-texts":t.infoTexts,"chart-data-urls":a.chartDataUrls,"is-card-view":"","as-detail-tab-content":"",title:"Analytics"},null,8,["entity","info-texts","chart-data-urls"])]),"service-documents":c(()=>[n(A,{"entity-path":a.documentEntityPath,"entity-query":a.entityQuery,fields:a.fields,class:"h-100",onDocumentChange:r[2]||(r[2]=l=>t.serviceDocument=l)},null,8,["entity-path","entity-query","fields"])]),"service-applications":c(()=>[n(g,{"service-id":a.id,class:"service-approval"},null,8,["service-id"])]),_:1},8,["entity","items"])]),_:1},8,["deps","url","skeleton-props"]),n(st,{record:t.toggleModalVisible?t.record:null,entity:s.entity.rootPath,"entity-name":s.entity.name,onDismiss:r[4]||(r[4]=l=>t.toggleModalVisible=!1),onUpdateRecord:r[5]||(r[5]=(l,f)=>t.record[l]=f)},null,8,["record","entity","entity-name"]),n(ot,{modelValue:t.deleteModalModel,"onUpdate:modelValue":r[6]||(r[6]=l=>t.deleteModalModel=l),entity:s.entity.rootPath,"redirect-route":t.redirectRouteAfterDelete,"entity-name":"Gateway Service",class:"defaultModal"},null,8,["modelValue","entity","redirect-route"])])}x=E(Y,[["render",at],["__scopeId","data-v-00c66a87"]])});export{he as __tla,x as default};
