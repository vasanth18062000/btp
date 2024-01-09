const cds = require('@sap/cds');

// module.exports = cds.service.impl(async function() {
// 	const { Products } = this.entities;
// 	const service = await cds.connect.to('Northwind');
// 	this.on('READ', Products, request => {
// 		return service.tx(request).run(request.query);
// 	});
// });

cds.context;


const LOG=cds.log('NORTHWIND');

module.exports = cds.service.impl(async function() {
	const { PersonDetail } = this.entities;
	const service = await cds.connect.to('Northwind');
	this.on('READ', PersonDetail, request => {
		LOG.info('PersonDetail entity fetched');
		return service.tx(request).run(request.query);
	}),

	  { Products } = this.entities;
	const service1 = await cds.connect.to('Northwind');
	this.on('READ', Products, request => {
		LOG.info('Products entity fetched');
		return service.tx(request).run(request.query);
	}),

	{Persons} = this.entities;
    const service2=await cds.connect.to('Northwind');
	this.on('READ',Persons,request => {
        LOG.info('Persons entity fetched');
		return service.tx(request).run(request.query);
	}),

	{ ProductDetails } = this.entities;
	const service3 = await cds.connect.to('Northwind');
	this.on('READ', ProductDetails, request => {
		LOG.info('ProductDetails entity fetched');
		return service.tx(request).run(request.query);
	}),

	{ Categories } = this.entities;
	const service4 = await cds.connect.to('Northwind');
	this.on('READ', Categories, request => {
		LOG.info('Categories entity fetched');
		return service.tx(request).run(request.query);
	}),
 
	{ Suppliers } = this.entities;
	const service5 = await cds.connect.to('Northwind');
	this.on('READ', Suppliers, request => {
		LOG.info('Suppliers entity fetched');
		return service.tx(request).run(request.query);
	}),

	{ Advertisements } = this.entities;
	const service6 = await cds.connect.to('Northwind');
	this.on('READ', Advertisements, request => {
		LOG.info('Advertisements entity fetched');
		return service.tx(request).run(request.query);
	})



	

});