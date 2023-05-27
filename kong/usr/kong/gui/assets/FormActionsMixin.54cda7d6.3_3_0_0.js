/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

const i={data(){return{isSaveActionDisabled:!1}},computed:{formRef(){return this.$refs.form}},mounted(){this.isSaveActionDisabled=this.formRef.isSaveActionDisabled,this.$watch("formRef.isSaveActionDisabled",e=>{this.isSaveActionDisabled=e})},methods:{handleFormSave(){return this.formRef.confirm()},handleFormCancel(){return this.formRef.cancel()}}};export{i as F};
