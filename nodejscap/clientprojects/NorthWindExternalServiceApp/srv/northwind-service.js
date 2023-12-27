

const cds = require('@sap/cds');
const LOG=cds.log('northwind');

module.exports = cds.service.impl(async function() {
	const { Products } = this.entities;
    
	const service = await cds.connect.to('northwind');
	this.on('READ', Products, request => {
		LOG.info('logger working');
		return service.tx(request).run(request.query);
	});
});

