/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{t as l,g as e}from"./typedefs.6c779761.3_3_0_0.js";const i={fields:[{group:{hint:"The arbitrary group name to associate to the consumer."}}]},n={fields:[{username:{}},{password:{inputType:"password"}}]},a={fields:[{key:{submitWhenNull:!1,hint:`You can optionally set your own unique key to authenticate the
               client. If missing, it will be generated for you.`}}]},s={fields:[{key:{submitWhenNull:!1,hint:`You can optionally set your own unique key to authenticate the
               client. If missing, it will be generated for you.`,inputType:"password",encrypted:!0}}]},o={fields:[{name:{}},{client_id:{submitWhenNull:!1,hint:`You can optionally set your own unique client_id. If missing, it
               will be generated for you.`,inputType:"password",encrypted:!0}},{client_secret:{submitWhenNull:!1,hint:`You can optionally set your own unique client_secret. If missing,
               it will be generated for you.`,inputType:"password",encrypted:!0}},{redirect_uris:l.fields.arrayItems({label:"Redirect URI(s)",hint:`One or more URLs in your app where users will be sent after
               authorization (RFC 6742 Section 3.1.2)`,newElementButtonLabel:"+ Add Redirect URI",inputAttributes:{placeholder:"Enter URI"}})}]},u={fields:[{username:{hint:"The username to use in the HMAC Signature verification."}},{secret:{inputType:"password",submitWhenNull:!1,hint:`The secret to use in the HMAC Signature verification. Note that
        if this parameter isn\u2019t provided, Kong will generate a value for you and
        send it as part of the response body.`}}]},r={fields:[{key:{submitWhenNull:!1,hint:`A unique string identifying the credential. If left out, it will
               be auto-generated.`}},{algorithm:{order:1,hint:"The algorithm used to verify the token\u2019s signature."}},{rsa_public_key:{order:2,type:"textArea",label:"RSA public-key",hint:`If algorithm is RS256 or ES256, the public key (in PEM format) to
        use to verify the token\u2019s signature.`,rows:10,visible:t=>t&&t.algorithm&&/(ES|RS)[\d]{3}/.test(t.algorithm)}},{secret:{inputType:"password",hint:`If algorithm is HS256 or ES256, the secret used to sign JWTs for
               this credential. If left out, will be auto-generated.`}}]},c={acl:{title:"ACL",plugin:"acl",schema:i,name:"Access Control Group",endpoint:"/acls",schemaEndpoint:"acls",fields:e(i),applyCredentialButtonText:"New Group to Consumer"},"basic-auth":{title:"Basic Authentication",plugin:"basic-auth",schema:n,name:"Basic Auth Credential",endpoint:"/basic-auth",schemaEndpoint:"basicauth_credentials",fields:e(n)},"key-auth":{title:"Key Authentication",plugin:"key-auth",schema:a,name:"Key Auth Credential",endpoint:"/key-auth",schemaEndpoint:"keyauth_credentials",fields:e(a)},"key-auth-enc":{title:"Key Authentication Encrypted",plugin:"key-auth-enc",schema:s,name:"Key Auth Enc Credential",endpoint:"/key-auth-enc",schemaEndpoint:"keyauth_enc_credentials",fields:e(s)},oauth2:{title:"OAuth 2.0",plugin:"oauth2",schema:o,name:"OAuth 2.0 Application",endpoint:"/oauth2",schemaEndpoint:"oauth2_credentials",fields:e(o)},"hmac-auth":{title:"HMAC Signature Authentication",plugin:"hmac-auth",schema:u,name:"HMAC Credential",endpoint:"/hmac-auth",schemaEndpoint:"hmacauth_credentials",fields:e(u)},jwt:{title:"JWT",plugin:"jwt",schema:r,name:"JWT Credential",endpoint:"/jwt",schemaEndpoint:"jwt_secrets",fields:{id:{},key:{},algorithm:{}}}};export{c as p};
