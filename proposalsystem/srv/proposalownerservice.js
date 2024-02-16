// //save the PorposalOwnerContact in vm ware hana db
// app.post('/saveOwnerContact',bodyParser.json(),async (req, res) => {

//     let output;
//     try {

//         console.log('req.body',req.body);

//         console.log('Request ', req);

//         let dateobj=new Date();

//         let date=dateobj.getDate();

//         console.log('Date',date);

//     let month=dateobj.getMonth();
//     console.log('month',month);

//     let year=dateobj.getFullYear();
//     console.log('year',year);

//     let hrs=dateobj.getHours();
//     console.log('hrs',hrs);

//     let min=dateobj.getMinutes();
//     console.log('min',min);

//     let sec=dateobj.getSeconds();
//     console.log('sec',sec);


//     output=await req.body;

//     console.log('output',output);
//     const db = new dbClass(await dbClass.createConnection(hanaConfig));

//     let PROPOSALOWNERCONTACT=output;
//     console.log('DOORNO',PROPOSALOWNERCONTACT.DOORNO);
//     console.log('STREETNAME',PROPOSALOWNERCONTACT.STREETNAME);
//     console.log('CITY',PROPOSALOWNERCONTACT.CITY);
//     console.log('PINCODE',PROPOSALOWNERCONTACT.PINCODE);
//     console.log('STATE',PROPOSALOWNERCONTACT.STATE);
//     console.log('COUNTRY',PROPOSALOWNERCONTACT.COUNTRY);
//     console.log('MOBILENUMBER',PROPOSALOWNERCONTACT.MOBILENUMBER);
//     console.log('TELEPHONENUMBER',PROPOSALOWNERCONTACT.TELEPHONENUMBER);
//     console.log('EMAILID',PROPOSALOWNERCONTACT.EMAILID);
//     console.log('PASSSWORD',PROPOSALOWNERCONTACT.PASSWORD);

    
//     // PROPOSALOWNERCONTACT.ID=6;
//     // var CREATEDAT = datee.format(dateobj,'YYYY/MM/DD HH:mm:ss');
//     // var CREATEDBY = USERNAME;
//     // var MODIFIEDAT= CREATEDAT;
//     // var MODIFIEDBY= CREATEDBY;
    
//     PROPOSALOWNERCONTACT.CREATEDAT = datee.format(dateobj,'YYYY/MM/DD HH:mm:ss');
//     PROPOSALOWNERCONTACT.CREATEDBY = PROPOSALOWNERCONTACT.USERNAME;

//     var modifiedAt=new Date();                
//     PROPOSALOWNERCONTACT.MODIFIEDAT= datee.format(modifiedAt,'YYYY/MM/DD HH:mm:ss');;
//     PROPOSALOWNERCONTACT.MODIFIEDBY= PROPOSALOWNERCONTACT.CREATEDBY;


//     console.log('createdAt',PROPOSALOWNERCONTACT.CREATEDAT);
//     console.log('createdBy',PROPOSALOWNERCONTACT.CREATEDBY);
//     console.log('modifiedBy',PROPOSALOWNERCONTACT.MODIFIEDBY);
//     console.log('modifiedAt',PROPOSALOWNERCONTACT.MODIFIEDAT);
//     console.log('PROPOSALOWNERCONTACT_PROPOSALOWNER_FK',PROPOSALOWNERCONTACT.PS_OWNER_FK);
//     try{
    
//         let insertQuery;
//         insertQuery = `INSERT INTO PROPOSALSYSTEM.PROPOSALOWNERCONTACT (DOORNO, STREETNAME, CITY, PINCODE, STATE, COUNTRY, MOBILENUMBER, TELEPHONENUMBER, EMAILID, PASSWORD, CREATEDBY, CREATEDAT, MODIFIEDBY, MODIFIEDAT,PS_OWNER_FK) VALUES ('${PROPOSALOWNERCONTACT.DOORNO}','${PROPOSALOWNERCONTACT.STREETNAME}','${PROPOSALOWNERCONTACT.CITY}','${PROPOSALOWNERCONTACT.PINCODE}','${PROPOSALOWNERCONTACT.STATE}'
//         ,'${PROPOSALOWNERCONTACT.COUNTRY}','${PROPOSALOWNERCONTACT.MOBILENUMBER}','${PROPOSALOWNERCONTACT.TELEPHONENUMBER}','${PROPOSALOWNERCONTACT.EMAILID}','${PROPOSALOWNERCONTACT.PASSWORD}','${PROPOSALOWNERCONTACT.CREATEDBY}','${PROPOSALOWNERCONTACT.CREATEDAT}','${PROPOSALOWNERCONTACT.MODIFIEDBY}','${PROPOSALOWNERCONTACT.MODIFIEDAT}','${PROPOSALOWNERCONTACT.PS_OWNER_FK}')`;
    
//         await db.execSQL(insertQuery);
//         res.send("Data Successfully added ")
//         }
//         catch(err){
//             console.log('inside error message:',err);
//         }
    
//     }catch(err){
//         console.log('error message',err);
//     }
// });