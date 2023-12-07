const cds = require('@sap/cds');

// module.exports = cds.service.impl(async function() {
// 	const { Products } = this.entities;
// 	const service = await cds.connect.to('Northwind');
// 	this.on('READ', Products, request => {
// 		return service.tx(request).run(request.query);
// 	});
// });

module.exports = cds.service.impl(async function() {
	const { PersonDetail } = this.entities;
	const service = await cds.connect.to('Northwind');
	this.on('READ', PersonDetail, request => {
		return service.tx(request).run(request.query);
	}),

	  { Products } = this.entities;
	const service1 = await cds.connect.to('Northwind');
	this.on('READ', Products, request => {
		return service.tx(request).run(request.query);
	});

});