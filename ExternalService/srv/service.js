const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	const { Person } = this.entities;
	const service = await cds.connect.to('People');
	this.on('READ', Person, request => {
		return service.tx(request).run(request.query);
	});
});