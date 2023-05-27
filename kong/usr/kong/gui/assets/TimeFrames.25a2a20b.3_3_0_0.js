/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

const t=[{text:"Last 5 Minutes",value:{text:"Last 5 Minutes",timeFrameLength:300,stepSize:1,param:"seconds",ticksMod:60,refreshInterval:1e4}},{text:"Last 30 Minutes",value:{text:"Last 30 Minutes",timeFrameLength:1800,stepSize:60,param:"minutes",ticksMod:300,refreshInterval:3e4}},{text:"Last 60 Minutes",value:{text:"Last 60 Minutes",timeFrameLength:3600,stepSize:60,param:"minutes",ticksMod:900,refreshInterval:6e4}},{text:"Last 6 Hours",value:{text:"Last 6 Hours",timeFrameLength:21600,stepSize:60,param:"minutes",ticksMod:3600,refreshInterval:36e4}},{text:"Last 12 Hours",value:{text:"Last 12 Hours",timeFrameLength:43200,stepSize:60,param:"minutes",ticksMod:7200,refreshInterval:72e4}}];export{t as o};
