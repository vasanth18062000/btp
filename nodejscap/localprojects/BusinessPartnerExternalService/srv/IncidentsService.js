// Delegate Value Help reads for Customers to S4 backend
module.exports = async function() {
  const cds = require('@sap/cds');
  const service = await cds.connect.to('API_BUSINESS_PARTNER');

  this.on('READ', 'Customers', (req) => {
    return service.tx(req).run(req.query);
  });
}
