const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	const { Business } = this.entities;
	const service = await cds.connect.to('OP_API_BUSINESS_PARTNER_SRV');
	this.on('READ', Business, request => {
		return service.tx(request).run(request.query);
	});
});