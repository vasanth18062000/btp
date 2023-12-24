const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	const { Products } = this.entities;
	const service = await cds.connect.to('northwindexternalservice');
	this.on('READ', Products, request => {
		const LOG=cds.log('connection logger');
		LOG.info('connection logger enterered');
		LOG.info('connection logger ended');
		return service.tx(request).run(request.query);
	});
});