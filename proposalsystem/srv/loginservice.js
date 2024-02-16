// const cds = require('@sap/cds');
// const datee = require('date-and-time');
// const express = require('express');
// const app = express();
// const login = express.Router();
// const bodyParser = require('body-parser');


// // Reference HANA driver in the Node app and update the connection details
// let dbClass = require('sap-hdbext-promisfied')  //npm module must be installed for this
// let hana = require('@sap/hana-client');



// let db;

// let hanaConfig = {
//     host: '192.168.0.219',
//     port: `39013`,
//     sslValidateCertificate: false,
//     encrypt: true,
//     user: `PROPOSALSYSTEM`,
//     password: 'LaderaTech007',
    
// }

// // app.post('/userSignup',bodyParser.json(),async (req, res) => {
// //     let output;
// //     try {

// //         console.log('req.body',req.body);

// //         console.log('Request ', req);

// //         let dateobj=new Date();

// //         let date=dateobj.getDate();

// //     console.log('Date',date);

// //     let month=dateobj.getMonth();
// //     console.log('month',month);

// //     let year=dateobj.getFullYear();
// //     console.log('year',year);

// //     let hrs=dateobj.getHours();
// //     console.log('hrs',hrs);

// //     let min=dateobj.getMinutes();
// //     console.log('min',min);

// //     let sec=dateobj.getSeconds();
// //     console.log('sec',sec);


// //     output=await req.body;

// //     console.log('output',output);
// //      db = new dbClass(await dbClass.createConnection(hanaConfig));

// //     output.forEach(async elements => {
    
// //         // let {USERNAME,EMAILID,PASSWORD} = element;

// //         let LOGINCREDENTIALS=elements;
 
        

        
// //     console.log('EMAILID',LOGINCREDENTIALS.EMAILID);
// //     console.log('USERNAME',LOGINCREDENTIALS.USERNAME);
// //     console.log('PASSSWORD',LOGINCREDENTIALS.PASSWORD);

    
// //     LOGINCREDENTIALS.ID=1;
// //     // var CREATEDAT = datee.format(dateobj,'YYYY/MM/DD HH:mm:ss');
// //     // var CREATEDBY = USERNAME;
// //     // var MODIFIEDAT= CREATEDAT;
// //     // var MODIFIEDBY= CREATEDBY;
    
// //     LOGINCREDENTIALS.CREATEDAT = datee.format(dateobj,'YYYY/MM/DD HH:mm:ss');
// //     LOGINCREDENTIALS.CREATEDBY = LOGINCREDENTIALS.USERNAME;

// //     var modifiedAt=new Date();                
// //     LOGINCREDENTIALS.MODIFIEDAT= datee.format(modifiedAt,'YYYY/MM/DD HH:mm:ss');;
// //     LOGINCREDENTIALS.MODIFIEDBY= LOGINCREDENTIALS.CREATEDBY;


// //     console.log('createdAt',LOGINCREDENTIALS.CREATEDAT);
// //     console.log('createdBy',LOGINCREDENTIALS.CREATEDBY);
// //     console.log('modifiedBy',LOGINCREDENTIALS.MODIFIEDBY);
// //     console.log('modifiedAt',LOGINCREDENTIALS.MODIFIEDAT);

    
// //     try{
    
// //     let insertQuery;
// //     insertQuery = `INSERT INTO PROPOSALSYSTEM.LOGINCREDENTIALS (ID,CREATEDAT,CREATEDBY,MODIFIEDAT,MODIFIEDBY,ORGANIZATIONNAME,PASSWORD,EMAILID) VALUES (${LOGINCREDENTIALS.ID},'${LOGINCREDENTIALS.CREATEDAT}','${LOGINCREDENTIALS.CREATEDBY}','${LOGINCREDENTIALS.MODIFIEDAT}','${LOGINCREDENTIALS.MODIFIEDBY}','${LOGINCREDENTIALS.ORGANIZATIONNAME}','${LOGINCREDENTIALS.PASSWORD}','${LOGINCREDENTIALS.EMAILID}')`;

// //     await db.execSQL(insertQuery);
// //     }
// //     catch(err){
// //         console.log('error message:',err);
// //     }
// //     });
// // console.log('Data inserted into HANA');
// // res.send("Data Successfully added ")
// // } catch (error) {
// // console.error(error);
// // res.status(500).json({ error: 'Failed to Post data' });
// // }
// // });

//  app.use('/login', login);

// login.get('/getUserData/:EMAILID/:PASSWORD',async (req,res) => {
//    try {

//     let {EMAILID}=req.params;
//     let {PASSWORD}=req.params;

//     console.log(`EMAILID ${EMAILID}`);

//     console.log(`PASSWORD ${PASSWORD}`);

//     db = new dbClass(await dbClass.createConnection(hanaConfig));

//     let getQuery;
//     getQuery = `SELECT * FROM PROPOSALSYSTEM.LOGINCREDENTIALS WHERE EMAILID='${EMAILID}' AND PASSWORD='${PASSWORD}' `;

//     console.log('After the query');
//     LOGINCREDENTIALS=await db.execSQL(getQuery);
//     console.log(`After execution ${LOGINCREDENTIALS}`);

//     console.log('User Data ', LOGINCREDENTIALS);
//     res.status(200).json({Data : `${LOGINCREDENTIALS}`});
//     console.log('Fetched Data successfully');

//    } catch (error) {

//       console.log('Error ', error);
//       res.status(500).json({error : 'Failed to Get Data '});
//    }


// })

// const port = process.env.PORT || 3000;

// app.listen(port, () => {
//     console.log(`Server running on port ${port}`);
// });
