const cds = require('@sap/cds');
const datee = require('date-and-time');
const express = require('express');
const app = express();
const bodyParser = require('body-parser')

// Reference HANA driver in the Node app and update the connection details
let dbClass = require('sap-hdbext-promisfied')  //npm module must be installed for this
let hana = require('@sap/hana-client');


let hanaConfig = {
    host: '192.168.0.219',
    port: `39013`,
    sslValidateCertificate: false,
    encrypt: true,
    user: `PROPOSALSYSTEM`,
    password: 'LaderaTech007',
    
}

app.post('/proposalclientsignup',bodyParser.json(),async (req, res) => {
    let output;
    try {

    console.log('req.body',req.body);

    let dateobj=new Date();

    let date=dateobj.getDate();

    console.log('Date',date);

    let month=dateobj.getMonth();
    console.log('month',month);

    let year=dateobj.getFullYear();
    console.log('year',year);

    let hrs=dateobj.getHours();
    console.log('hrs',hrs);

    let min=dateobj.getMinutes();
    console.log('min',min);

    let sec=dateobj.getSeconds();
    console.log('sec',sec);


    output=await req.body;

    console.log('output',output);
    const db = new dbClass(await dbClass.createConnection(hanaConfig));

    output.forEach(async elements => {
    let =elements;
    
    
    console.log('EMAILID',USERCREDENTIALS.EMAILID);
    console.log('USERNAME',USERCREDENTIALS.USERNAME);
    console.log('PASSSWORD',USERCREDENTIALS.PASSWORD);

    
    USERCREDENTIALS.ID=6;
    // var CREATEDAT = datee.format(dateobj,'YYYY/MM/DD HH:mm:ss');
    // var CREATEDBY = USERNAME;
    // var MODIFIEDAT= CREATEDAT;
    // var MODIFIEDBY= CREATEDBY;
    
    USERCREDENTIALS.CREATEDAT = datee.format(dateobj,'YYYY/MM/DD HH:mm:ss');
    USERCREDENTIALS.CREATEDBY = USERCREDENTIALS.USERNAME;

    var modifiedAt=new Date();                
    USERCREDENTIALS.MODIFIEDAT= datee.format(modifiedAt,'YYYY/MM/DD HH:mm:ss');;
    USERCREDENTIALS.MODIFIEDBY= USERCREDENTIALS.CREATEDBY;


    console.log('createdAt',USERCREDENTIALS.CREATEDAT);
    console.log('createdBy',USERCREDENTIALS.CREATEDBY);
    console.log('modifiedBy',USERCREDENTIALS.MODIFIEDBY);
    console.log('modifiedAt',USERCREDENTIALS.MODIFIEDAT);

    
    try{
    
    let insertQuery;
    insertQuery = `INSERT INTO PROPOSALSYSTEM.USERCREDENTIALS (ID,CREATEDAT,CREATEDBY,MODIFIEDAT,MODIFIEDBY,USERNAME,PASSWORD,EMAILID) VALUES (${USERCREDENTIALS.ID},'${USERCREDENTIALS.CREATEDAT}','${USERCREDENTIALS.CREATEDBY}','${USERCREDENTIALS.MODIFIEDAT}','${USERCREDENTIALS.MODIFIEDBY}','${USERCREDENTIALS.USERNAME}','${USERCREDENTIALS.PASSWORD}','${USERCREDENTIALS.EMAILID}')`;

    await db.execSQL(insertQuery);
    }
    catch(err){
        console.log('error message:',err);
    }
    });
console.log('Data inserted into HANA');
res.send("Data Successfully added ")
} catch (error) {
console.error(error);
res.status(500).json({ error: 'Failed to Post data' });
}
});

const port = process.env.PORT || 3000;

app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
