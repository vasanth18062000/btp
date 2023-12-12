

module.exports = (async function() {
  const cds = require('@sap/cds');
  // const {speed} =this.entities;
  
    const s4hanacloud = await cds.connect.to('API_BUSINESS_PARTNER');

    
    
    // this.on('READ',speed , (req) => {
    //   console.log('>> delegating to S4 service...')
    //   return s4hanacloud.tx(req).run(req.query)
    // })

    this.on('READ', 'BusinessPartner', (req) => {
      console.log('>> delegating to S4 service...')
      return s4hanacloud.tx(req).run(req.query)
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
      })

    

})

