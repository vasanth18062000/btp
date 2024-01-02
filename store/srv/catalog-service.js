

module.exports = cds.service.impl(async function() {

const cds = require('@sap/cds');


	const { Products } = this.entities;
	const service = await cds.connect.to('NorthWind');

	this.on('READ', 'Products', request => {
		return service.tx(request).run(request.query);
	}),

	this.on('READ', 'ProductDetails', request => {
		return service.tx(request).run(request.query);
	}),

	this.on('READ', 'Employee', request => {
		return service.tx(request).run(request.query);
	}),
	this.on('READ', 'Categories', request => {
		return service.tx(request).run(request.query);
	}),
	this.on('READ', 'Customer', request => {
		return service.tx(request).run(request.query);
	}),
	this.on('READ', 'Suppliers', request => {
		return service.tx(request).run(request.query);
	})
	
})
// 	this.on('READ', 'ProductDetails', (req) => {
// 		console.log('>>delegating from server')
// 		return service.tx(req).run(req.query);
// 	})

	 
// })

// module.exports=(async function(){

//     const cds = require('@sap/cds');
//     const S4bupa = await cds.connect.to('NorthWind')
  
//     // Delegate Value Help reads for Customers to S4 backend
//     this.on('READ', 'Product', (req) => {
//       console.log('>> delegating to S4 service...')
//       return S4bupa.run(req.query)
//     }),

// 	this.on('READ', 'ProductDetails', (req) => {
// 		console.log('>> delegating to S4 service...')
// 		return S4bupa.run(req.query)
// 	  })

// })