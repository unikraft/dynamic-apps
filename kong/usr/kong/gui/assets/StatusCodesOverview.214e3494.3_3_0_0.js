/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{S as a,__tla as r}from"./StatusCodesWrapper.94765128.3_3_0_0.js";import{d as e}from"./chartHelpers.1bf67333.3_3_0_0.js";import{__tla as _}from"./index.84d84090.3_3_0_0.js";import{__tla as l}from"./monaco-editor.90904fcf.3_3_0_0.js";import{__tla as s}from"./ChartDataController.a765a4e0.3_3_0_0.js";import{__tla as o}from"./ChartHeader.0a2c695d.3_3_0_0.js";import{__tla as c}from"./TimeFramePicker.465b75eb.3_3_0_0.js";import"./TimeFrames.25a2a20b.3_3_0_0.js";import{__tla as m}from"./VitalsDisabled.f093ed15.3_3_0_0.js";import{__tla as p}from"./LineChartWrapper.be3dd56e.3_3_0_0.js";let t,u=Promise.all([(()=>{try{return r}catch{}})(),(()=>{try{return _}catch{}})(),(()=>{try{return l}catch{}})(),(()=>{try{return s}catch{}})(),(()=>{try{return o}catch{}})(),(()=>{try{return c}catch{}})(),(()=>{try{return m}catch{}})(),(()=>{try{return p}catch{}})()]).then(async()=>{t={name:"StatusCodesOverview",extends:a,props:{chartDataUrls:{type:Object,default:()=>({statusCodes:"status_code_classes"})},infoTexts:{type:Object,default:()=>({statusCodes:e.statusCodesOverview})}},data(){return{padding:null,chartBackgroundColor:null,chartWrapperClass:"col-lg-6 flex-lg-last",percentListWrapperClass:"col-lg-6 flex-lg-first",stacked:!0,height:265}}}});export{u as __tla,t as default};
