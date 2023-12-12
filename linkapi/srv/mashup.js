const cds = require('@sap/cds');

module.exports = (async function() {

  const {speed} =this.entities;

  // const bupa = await cds.connect.to('API_BUSINESS_PARTNER');
  
    const s4hanacloud = await cds.connect.to('API_BUSINESS_PARTNER');
    // const [major, minor] = cds.version.split('.').map(Number)
    // if (major < 6) // code for pre cds6 usage
    
    
    this.on('READ','Customer' , (req) => {
      console.log('>> delegating to S4 service...')
      console.log(req)
      return s4hanacloud.tx(req).run(req.query)
    }),

   

    this.on('READ', 'Suppliers', async req => {
        return s4hanacloud.run(req.query);
    }),

    this.on('READ', 'Address_Partner', (req) => {
        console.log('>> delegating to S4 service...')
        return s4hanacloud.run(req.query)
      }),

      this.on('READ', 'Email_Partner', (req) => {
        console.log('>> delegating to S4 service...')
        return s4hanacloud.run(req.query)
      }),

      this.on('READ', 'AddressFax', (req) => {
        console.log('>> delegating to S4 service...')
        return s4hanacloud.run(req.query)
      }),

      this.on('READ', 'AddressHomePage', (req) => {
        console.log('>> delegating to S4 service...')
        return s4hanacloud.run(req.query)
      }),

      this.on('READ', 'AddressPhoneNumber', (req) => {
        console.log('>> delegating to S4 service...')
        return s4hanacloud.run(req.query)
      }),

      this.on('READ', 'DepdntIntlLocNumber', (req) => {
        console.log('>> delegating to S4 service...')
        return s4hanacloud.run(req.query)
      }),

      this.on('READ', 'BPContactToAddress', (req) => {
        console.log('>> delegating to S4 service...')
        return s4hanacloud.run(req.query)
      }),

      this.on('READ', 'BPContactToFuncAndDept', (req) => {
        console.log('>> delegating to S4 service...')
        return s4hanacloud.run(req.query)
      }),

      this.on('READ', 'BusinessPartnerBank', (req) => {
        console.log('>> delegating to S4 service...')
        return s4hanacloud.run(req.query)
      }),

      this.on('READ', 'BPSuuplier', (req) => {
        console.log('>> delegating to S4 service...')
        return s4hanacloud.run(req.query)
      })

    });



      