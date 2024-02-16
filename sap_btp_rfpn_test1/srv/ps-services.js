// const cds = require('@sap/cds');
// const date=require('date-and-time');

// module.exports = cds.service.impl( async function () {
//      let {PS_VENDOR_ORG,PS_CUSTOMER_ORG,PS_CUSTOMER_ORG_CONTACT} = this.entities;

//     // create PS_VENDOR_ORG Record
//     this.before('CREATE',PS_VENDOR_ORG ,async request =>{
      
//       let PS_VENDOR_ORG= request.data;
//       console.log(`The Vendor name is ${PS_VENDOR_ORG.name}`);
      
//     //   console.log(`The Vendor name is ${PS_VENDOR_ORG.id}`);

//     let query=`SELECT MAX(id) as max from ${PS_CUSTOMER_ORG_CONTACT};`
//       console.log('query',query);
//       let id=await cds.tx(req).run(query);
//       console.log('id',id);
//       id.forEach(element => {
//         // console.log('element',element);
//         // console.log('element',element.id);
//         maxId=element.MAX;
//         console.log("element.MAX(ID)",maxId);
//         customerContactData.id=Number(maxId)+1;
//       });

//       let dateObj= new Date();
//      let formattedDate= date.format(dateObj,'YYYY/MM/DD HH:mm:ss');
//       console.log(`Date Object is ${formattedDate}`);
//       // PS_VENDOR_ORG.id=7;
//       let Org_Name=PS_VENDOR_ORG.name;
//       let createdAt=dateObj;
//       let modifiedBy=PS_VENDOR_ORG.name;
//       let modifiedAt=dateObj;
//       PS_VENDOR_ORG.createdBy=Org_Name;
//       PS_VENDOR_ORG.createdAt=formattedDate;
//       PS_VENDOR_ORG.modifiedBy=modifiedBy;
//       PS_VENDOR_ORG.modifiedAt=formattedDate;


//     //    console.log("Vendor Object "+ PS_VENDOR_ORG);
//     });

//     //create PS_CUSTOMER_ORG Records
//     this.before('CREATE',PS_CUSTOMER_ORG,async req=>{
//       console.log("req.data",req.data);
//       let customerData=req.data;

//       let query=`SELECT MAX(id) as max from ${PS_CUSTOMER_ORG};`
//       console.log('query',query);
//       let id=await cds.tx(req).run(query);
//       console.log('id',id);
//       id.forEach(element => {
//         // console.log('element',element);
//         // console.log('element',element.id);
//         maxId=element.MAX;
//         console.log("element.MAX(ID)",maxId);
//         customerData.id=Number(maxId)+1;
//       });

//       let dateObj= new Date();
//      let formattedDate= date.format(dateObj,'YYYY/MM/DD HH:mm:ss');
//       console.log(`Date Object is ${formattedDate}`);

//       let orgName=customerData.name;
//       let modifiedBy=customerData.name;
//       customerData.createdBy=orgName;
//       customerData.createdAt=formattedDate;
//       customerData.modifiedBy=modifiedBy;
//       customerData.modifiedAt=formattedDate;
//     })

//     //update PS_CUSTOMER_ORG Records
//     this.before('UPDATE',PS_CUSTOMER_ORG,req=>{
//       console.log('req',req);
//       console.log('req.body',req.body);
//       let customerData=req.data;
//       let dateObj= new Date();
//      let formattedDate= date.format(dateObj,'YYYY/MM/DD HH:mm:ss');
//       console.log(`Date Object is ${formattedDate}`);
//       let orgName=customerData.name;
//       let modifiedBy=customerData.name;
//       // customerData.createdBy=orgName;
//       // customerData.createdAt=formattedDate;
//       customerData.modifiedBy=modifiedBy;
//       customerData.modifiedAt=formattedDate;
//       // if(!customerData.name){
//       //   customerData.name=
//       // }
//     })

//     //read PS_CUSTOMER_ORG_CONTACT all the records
//     this.before('READ',PS_CUSTOMER_ORG_CONTACT,async req=>{
//       // console.log('req',req);
      
//       let query=`SELECT MAX(id) from ${PS_CUSTOMER_ORG_CONTACT};`
//       console.log('query',query);
//       let id=await cds.tx(req).run(query);
//       console.log('id',id);
//       // return cds.tx(req).run(req.query);
//     })

//     //create PS_CUSTOMER_ORG_CONTACT records
//     this.before('CREATE',PS_CUSTOMER_ORG_CONTACT,async req=>{
//       console.log("req.data",req.data);
//       let customerContactData=req.data;
//       let query=`SELECT MAX(id) as max from ${PS_CUSTOMER_ORG_CONTACT};`
//       console.log('query',query);
//       let id=await cds.tx(req).run(query);
//       console.log('id',id);
//       id.forEach(element => {
//         // console.log('element',element);
//         // console.log('element',element.id);
//         maxId=element.MAX;
//         console.log("element.MAX(ID)",maxId);
//         customerContactData.id=Number(maxId)+1;
//       });
      
//       let dateObj= new Date();
//      let formattedDate= date.format(dateObj,'YYYY/MM/DD HH:mm:ss');
//       console.log(`Date Object is ${formattedDate}`);

//       let modifiedBy=customerContactData.name;
//       // customerContactData.createdBy=customerContactData.;
//       customerContactData.createdAt=formattedDate;
//       customerContactData.modifiedBy=modifiedBy;
//       customerContactData.modifiedAt=formattedDate;
//     })

//     // update PS_CUSTOMER_ORG_CONTACT records
//     this.before('UPDATE',PS_CUSTOMER_ORG_CONTACT,req=>{
//       console.log('req',req);
//       // console.log('req.body',req.body);
//       let customerContactData=req.data;
//       let dateObj= new Date();
//      let formattedDate= date.format(dateObj,'YYYY/MM/DD HH:mm:ss');
//       console.log(`Date Object is ${formattedDate}`);
      
//       let modifiedBy=customerContactData.name;
//       customerContactData.modifiedBy=modifiedBy;
//       customerContactData.modifiedAt=formattedDate;
      
//     })
// })