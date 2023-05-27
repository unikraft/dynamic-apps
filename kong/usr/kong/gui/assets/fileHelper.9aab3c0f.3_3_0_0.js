/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

const l={YAML:"yaml",JSON:"json",HANDLEBARS:"hbs"},s={getFileType(i,e){if(i==="page"||i==="partial")return l.HANDLEBARS;if(i==="spec"){e=typeof e!="string"?JSON.stringify(e):e;try{e=JSON.parse(e)}catch{return l.YAML}if(typeof e=="object"&&e!==null)return l.JSON}return""},stripFileName(i){if(i.includes("/")){const e=i.split("/");i=e[e.length-1]}return i},saveFileViaMsSaveBlob(i,e){window.navigator.msSaveBlob&&window.navigator.msSaveBlob(i,e)},saveFileViaDOM(i,e){const r=window.document.createElement("a");r.href=window.URL.createObjectURL(i),r.download=e,document.body.appendChild(r),r.click(),document.body.removeChild(r)}};export{s as f};
