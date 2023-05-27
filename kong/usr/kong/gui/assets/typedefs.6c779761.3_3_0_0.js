/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

const s=e=>{const t=Object.fromEntries(e.fields.map(a=>Object.entries(a)[0]));return"id"in t||(t.id={}),t},n={label:"Tags",name:"tags",type:"input",inputType:"text",valueType:"array",valueArrayType:"string",placeholder:"Enter list of tags",help:"An optional set of strings for grouping and filtering, separated by commas.",hint:"e.g. tag1, tag2, tag3"},l={label:"ID"},r={label:"Enabled",indexed:!0,type:"boolean"},i={label:"Created"},o={label:"Last updated"},p={arrayItems(e){const t=e.inputAttributes||{};return delete e.inputAttributes,{type:"array",itemContainerComponent:"FieldArrayItem",fieldClasses:"w-100",fieldItemsClasses:"d-flex mt-2 w-50",newElementButtonLabelClasses:"my-5",inputAttributes:{class:"k-input",style:{minWidth:"200px"},...t},removeElementButtonLabel:"remove",styleClasses:"w-100",inputType:"text",valueType:"array",valueArrayType:"string",...e}}},d={getColumnFields:s,tags:n,id:l,enabled:r,created_at:i,updated_at:o,fields:p};export{n as a,s as g,l as i,d as t};
