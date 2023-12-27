// using {  OP_API_BUSINESS_PARTNER_SRV as my } from '../srv/external/OP_API_BUSINESS_PARTNER_SRV';
using {  OP_API_BUSINESS_PARTNER_SRV as bupa } from '../srv/external/OP_API_BUSINESS_PARTNER_SRV';


service RiskService {

//      const cds = require('@sap/cds');
//      module.exports = cds.service.impl(async function() {
//            const bupa = await cds.connect.to('API_BUSINESS_PARTNER');
//             this.on('READ', 'Suppliers', async req => {
//         return bupa.run(req.query);
//     });

   

//     this.after('READ', 'Risks', risksData => {
//         ...
//     });
// });

/**
* Implementation for Risk Management service defined in ./risk-service.cds
*/

    entity SupplierCompany @(restrict : [
    ...
          ]) as projection on bupa.A_SupplierCompany;
      annotate SupplierCompany with @odata.draft.enabled;
    
    @readonly
    entity Suppliers @(restrict : [
              {
                  grant : [ 'READ' ],
                  to : [ 'RiskViewer', 'RiskManager' ]
              }
          ]) as projection on bupa.A_Supplier;


         
}


