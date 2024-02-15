const cds = require ('@sap/cds')
module.exports = cds.server

 const cds_swagger = require ('cds-swagger-ui-express')
 cds.on ('bootstrap', app => app.use (cds_swagger()) )


//const cds = require('@sap/cds');
//const datee = require('date-and-time');
const express = require('express');
const app = express();
//const bodyParser = require('body-parser')

// Reference HANA driver in the Node app and update the connection details
let dbClass = require('sap-hdbext-promisfied')  //npm module must be installed for this
let hana = require('@sap/hana-client');


let hanaConfig = {
    host: '192.168.1.6',
    port: `39013`,
    sslValidateCertificate: false,
    encrypt: true,
    user: `PROPOSALSYSTEM`,
    password: 'LaderaTech007',
    
}