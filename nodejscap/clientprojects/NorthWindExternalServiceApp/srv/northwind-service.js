//using {co.ladera as my} from './';

const cds = require('@sap/cds');

const LOG=cds.log('northwind');

module.exports = cds.service.impl(async function() {
	const { Products } = this.entities;

    
	const service = await cds.connect.to('northwind');
	console.log('inside async function');
	 this.on('*',req=>{

		   // console.log(req.event);
		    // const { res }=req.http;
			// res.send('hello')
 			
			
			return service.tx(req).run(req.query); //SELECT.from(Products).where({Rating:{'>':4}})
	         
		})
});









