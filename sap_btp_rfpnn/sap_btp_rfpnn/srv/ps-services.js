  const cds = require('@sap/cds');
  const date=require('date-and-time');
  const winston = require('winston');
  const { combine, timestamp, label, prettyPrint } = winston.format;
  


  const PS_LOGGER = winston.createLogger({
    format: combine(
      label({ label: 'PS_LOG' }),
      timestamp(),
      prettyPrint()
    ),
    transports: [new winston.transports.Console(),
      new winston.transports.File({
        filename: 'info.log',
        level: 'info'
      })]
  })


  module.exports = cds.service.impl( async function () {
      let {PS_VENDOR_ORG,PS_CUSTOMER_ORG,PS_CUSTOMER_ORG_CONTACT} = this.entities;
      this.before('CREATE',PS_VENDOR_ORG , request =>{
        
        let PS_VENDOR_ORG= request.data;
        console.log(`The Vendor name is ${PS_VENDOR_ORG.name}`);
        
        
      //   console.log(`The Vendor name is ${PS_VENDOR_ORG.id}`);

        let dateObj= new Date();
      let formattedDate= date.format(dateObj,'YYYY/MM/DD HH:mm:ss');
        console.log(`Date Object is ${formattedDate}`);
        console.log("Before Request Object ", request.data);
        // PS_VENDOR_ORG.id=7;
        // let Org_Name=PS_VENDOR_ORG.name;
        // let createdAt=dateObj;
        // let modifiedBy=PS_VENDOR_ORG.name;
        // let modifiedAt=dateObj;
        // PS_VENDOR_ORG.createdBy=Org_Name;
        // PS_VENDOR_ORG.createdAt=formattedDate;
        // PS_VENDOR_ORG.modifiedBy=modifiedBy;
        // PS_VENDOR_ORG.modifiedAt=formattedDate;


      //    console.log("Vendor Object "+ PS_VENDOR_ORG);
      });

      this.after('CREATE',PS_VENDOR_ORG, (data,req)=>{
        
        // let PS_VENDOR_ORG=req.data;
        // console.log("On Create Request Object ", req.data);
        PS_LOGGER.log({
          level: 'info',
          // message: `${PS_VENDOR_ORG.name} Organization got Successfully Created`
          message: `${data.name} Organization got Successfully Created`
        });
      })

      this.before('CREATE',PS_CUSTOMER_ORG,req=>{
        console.log("req.data",req.data);
        let PS_CUSTOMER_ORG=req.data;

      //   let dateObj= new Date();
      PS_LOGGER.log({
        level: 'info',
        message: `${PS_CUSTOMER_ORG.name} Customer Organization Got Successfully Created`
      });
      //  let formattedDate= date.format(dateObj,'YYYY/MM/DD HH:mm:ss');
      //   console.log(`Date Object is ${formattedDate}`);

      //   let orgName=customerData.name;
      //   let modifiedBy=customerData.name;
      //   // customerData.createdBy=orgName;
        // customerData.createdAt=formattedDate;
        // customerData.modifiedBy=modifiedBy;
        // customerData.modifiedAt=formattedDate;
      })

        this.on('CREATE',PS_CUSTOMER_ORG,request=>{
          console.log("Request ", request);
          console.log("Request ", request);
          let PS_CUSTOMER_ORG=request.data;
          console.log("Customer Organization ",PS_CUSTOMER_ORG);
          console.log(`Template ${PS_CUSTOMER_ORG.name}`);
          let CustomerName=PS_CUSTOMER_ORG.name;
          PS_LOGGER.log({
            level: 'info',
            message: `${CustomerName} Customer Organization Got Successfully Created`
          });
        })

      this.before('UPDATE',PS_CUSTOMER_ORG,req=>{
        console.log('req',req);
        console.log('req.body',req.body);
        let customerData=req.data;
      //   let dateObj= new Date();
      //  let formattedDate= date.format(dateObj,'YYYY/MM/DD HH:mm:ss');
      //   console.log(`Date Object is ${formattedDate}`);
      //   let orgName=customerData.name;
      //   let modifiedBy=customerData.name;
      //   // customerData.createdBy=orgName;
        // customerData.createdAt=formattedDate;
        // customerData.modifiedBy=modifiedBy;
        // customerData.modifiedAt=formattedDate;
        // // if(!customerData.name){
        //   customerData.name=
        // }
      })

      this.before('CREATE',PS_CUSTOMER_ORG_CONTACT,(req)=>{
        console.log("req.data",req.data);
        let customerContactData=req.data;
        let dateObj= new Date();
      let formattedDate= date.format(dateObj,'YYYY/MM/DD HH:mm:ss');
        console.log(`Date Object is ${formattedDate}`);

        // let modifiedBy=customerContactData.name;
        // customerContactData.createdBy=customerContactData.;
        // customerContactData.createdAt=formattedDate;
        // customerContactData.modifiedBy=modifiedBy;
        // customerContactData.modifiedAt=formattedDate;
      })

      this.before('UPDATE',PS_CUSTOMER_ORG_CONTACT,req=>{
        console.log('req',req);
        // console.log('req.body',req.body);
        let customerContactData=req.data;
        let dateObj= new Date();
      let formattedDate= date.format(dateObj,'YYYY/MM/DD HH:mm:ss');
        console.log(`Date Object is ${formattedDate}`);
        
        // let modifiedBy=customerContactData.name;
        // customerContactData.modifiedBy=modifiedBy;
        // customerContactData.modifiedAt=formattedDate;
        
      })

      
  })