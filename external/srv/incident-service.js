module.exports = (async function() {


    const cds = require('@sap/cds');
    const S4bupa = await cds.connect.to('API_BUSINESS_PARTNER')
  
    // Delegate Value Help reads for Customers to S4 backend
    this.on('READ', 'Customer', (req) => {
      console.log('>> delegating to S4 service...')
      return S4bupa.run(req.query)
    }),

    this.on('READ', 'A_Supplier', (req) => {
        console.log('>> delegating to S4 service...')
        return S4bupa.run(req.query)
      }),

      this.on('READ', 'A_SupplierCompany', (req) => {
        console.log('>> delegating to S4 service...')
        return S4bupa.run(req.query)
      }),

      this.on('READ', 'A_BusinessPartnerAddress', (req) => {
        console.log('>> delegating to S4 service...')
        return S4bupa.run(req.query)
      }),

      this.on('READ', 'Email_Partner', (req) => {
        console.log('>> delegating to S4 service...')
        return S4bupa.run(req.query)
      })
    })