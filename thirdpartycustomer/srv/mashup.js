module.exports = (async function() {


    const cds = require('@sap/cds');
    const S4bupa = await cds.connect.to('API_BUSINESS_PARTNER')
  
    this.on('READ', 'Customer', (req) => {
      return S4bupa.run(req.query)
    }),
  
    this.on('READ', 'CustAddrDepdntExtIdentifier', (req) => {
        return S4bupa.run(req.query)
      }),
  
      this.on('READ', 'CustomerCompany', (req) => {
        return S4bupa.run(req.query)
      }),
  
      this.on('READ', 'CustomerSalesArea', (req) => {
        return S4bupa.run(req.query)
      }),
  
      this.on('READ', 'CustomerUnloadingPoint', (req) => {
        return S4bupa.run(req.query)
      }),
      this.on('READ', 'CustomerTaxGrouping', (req) => {
        return S4bupa.run(req.query)
      }),
      this.on('READ', 'CustomerText', (req) => {
        return S4bupa.run(req.query)
      })
    })