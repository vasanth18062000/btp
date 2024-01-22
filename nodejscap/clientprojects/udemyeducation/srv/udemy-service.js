
// class UdemyEducationService extends cds.ApplicationService {
//     init() {
//       const { Employees} = this.entities
//       this.before ('READ', Employees, req => {console.log(req);})
//     //   this.after ('READ', Books, req => {...})
//     //   this.on ('submitOrder', req => {...})
//       return super.init()
//     }
//   }
//   module.exports = UdemyEducationService

const cds = require('@sap/cds')
cds.ApplicationService
cds.on('served',()=>{
    const { SomeService } = cds.services
})
// module.exports = cds.service.impl ( async function(){ 
//     const srv = (new cds.Service)
//  .on('READ','Employees', req => console.log (req.event, req.entity))
  
// await srv.read('Employees') 



