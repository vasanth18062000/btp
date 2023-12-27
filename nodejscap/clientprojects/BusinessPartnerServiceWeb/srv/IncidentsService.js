const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
    console.log("Before connection");

    const  {BusinessPartners}  = this.entities;
    const service = await cds.connect.to('API_BUSINESS_PARTNER');

    console.log("After connection");

    console.log("Before click event");

    this.on('READ', BusinessPartners, request => {

        console.log("Clicked");

        return service.tx(request).run(request.query);
    })

    console.log("AFTER connection");

    // this.on('READ', BusinessPartnerAccount, request => {
    //     return service.tx(request).run(request.query);
    // })

});