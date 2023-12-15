const cds = require('@sap/cds');
const { select } = require('@sap/cds/libx/_runtime/hana/execute');

module.exports = (async function() {
  const bupa = await cds.connect.to('API_BUSINESS_PARTNER');
  

const {francis} = bupa.entities;  //A_BusinessPartner;

//const ajay =this.entities;

 //const result = await bupa.run(SELECT(francis).limit(4));

 const test = await bupa.run(SELECT(francis).limit(4));
 
    
    this.on('READ', test , (req) => {
      console.log('>> delegating to S4 service...')
      return bupa.run(req.query)
    })

  })

   

    // this.on('READ', 'Suppliers', async req => {
    //     return s4hanacloud.run(req.query);
    // }),

    // this.on('READ', 'Address_Partner', (req) => {
    //     console.log('>> delegating to S4 service...')
    //     return s4hanacloud.run(req.query)
    //   }),

    //   this.on('READ', 'Email_Partner', (req) => {
    //     console.log('>> delegating to S4 service...')
    //     return s4hanacloud.run(req.query)
    //   }),

    //   this.on('READ', 'AddressFax', (req) => {
    //     console.log('>> delegating to S4 service...')
    //     return s4hanacloud.run(req.query)
    //   }),

    //   this.on('READ', 'AddressHomePage', (req) => {
    //     console.log('>> delegating to S4 service...')
    //     return s4hanacloud.run(req.query)
    //   }),

    //   this.on('READ', 'AddressPhoneNumber', (req) => {
    //     console.log('>> delegating to S4 service...')
    //     return s4hanacloud.run(req.query)
    //   }),

    //   this.on('READ', 'DepdntIntlLocNumber', (req) => {
    //     console.log('>> delegating to S4 service...')
    //     return s4hanacloud.run(req.query)
    //   }),

    //   this.on('READ', 'BPContactToAddress', (req) => {
    //     console.log('>> delegating to S4 service...')
    //     return s4hanacloud.run(req.query)
    //   }),

    //   this.on('READ', 'BPContactToFuncAndDept', (req) => {
    //     console.log('>> delegating to S4 service...')
    //     return s4hanacloud.run(req.query)
    //   }),

    //   this.on('READ', 'BusinessPartnerBank', (req) => {
    //     console.log('>> delegating to S4 service...')
    //     return s4hanacloud.run(req.query)
    //   }),

    //   this.on('READ', 'BPSuuplier', (req) => {
    //     console.log('>> delegating to S4 service...')
    //     return s4hanacloud.run(req.query)
    //   })


      

