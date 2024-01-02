const cds = require('@sap/cds');
const {products} = this.entities;
const service = await cds.connect.to('NorthWind');

module.exports = cds.service.impl(async function() {
    
    this.on('READ', products, request => {
        return service.tx(request).run(request.query);
    });

});