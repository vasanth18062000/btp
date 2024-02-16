const cds=require('@sap/cds')

module.exports=cds.service.impl(async function () {
    cds.on('bootstrap', app=> {console.log("After  Bootstrap-ed ")});
    cds.on('load',app=>{console.log("After Loaded")});
    cds.on('serving',app=> {console.log("After serving ")});
    cds.on('served',app => {console.log("After serving the services")});
    cds.on('listening',app=>{console.log("After the server is started and listening to the incoming request")});
    cds.on('shutdown',app => {console.log(" Over hogaya")});
})