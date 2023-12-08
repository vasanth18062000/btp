module.exports=(async function(){

    const cds = require('@sap/cds');
    const S4bupa = await cds.connect.to('API_BUSINESS_PARTNER')
  
    // Delegate Value Help reads for Customers to S4 backend
    this.on('READ', 'EmailAddress', (req) => {
      console.log('>> delegating to S4 service...')
      return S4bupa.run(req.query)
    }),
    this.on('READ', 'BusinessPartner', (req) => {
        console.log('>> delegating to S4 service...')
        return S4bupa.run(req.query)
      }),

      this.on('READ', 'bpcontactaddress', (req) => {
        console.log('>> delegating to S4 service...')
        return S4bupa.run(req.query)

}),
this.on('READ', 'bpcreditinformation', (req) => {
    console.log('>> delegating to S4 service...')
    return S4bupa.run(req.query)

}),
this.on('READ', 'bpdatacontrol', (req) => {
    console.log('>> delegating to S4 service...')
    return S4bupa.run(req.query)

}),
this.on('READ', 'bpyearinformation', (req) => {
    console.log('>> delegating to S4 service...')
    return S4bupa.run(req.query)

}),
this.on('READ', 'bpinteladdress', (req) => {
    console.log('>> delegating to S4 service...')
    return S4bupa.run(req.query)


}),
this.on('READ', 'bprelation', (req) => {
    console.log('>> delegating to S4 service...')
    return S4bupa.run(req.query)

}),

this.on('READ', 'bupaIdentyfication', (req) => {
    console.log('>> delegating to S4 service...')
    return S4bupa.run(req.query)

}),
this.on('READ', 'bupaIndustry', (req) => {
    console.log('>> delegating to S4 service...')
    return S4bupa.run(req.query)



}),




this.on('READ', 'AddressFaxNo', (req) => {
    console.log('>> delegating to S4 service...')
    return S4bupa.run(req.query)

})

})
