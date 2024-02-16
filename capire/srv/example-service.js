const cds= require('@sap/cds');
const { log } = require('@sap/cds/lib');
 
// cds.Service
//   const srv=new cds.service;

// // const srv =  cds.connect.to('StudentService');

module.exports=cds.service.impl( async function(){
  // let csn=await cds.compile(['db','srv']);
  // let csn=await cds.compile('*');
  // let csn=await cds.compile('file:srv');

  let csn=await cds.compile('*',{docs:true});
  // let sql=await cds.compile('file:srv').to.sql({dialect:'sqlite'});
  // let sql=await cds.compile('file:srv').to.sql({as:'simbu'});
  let sql=await cds.compile('file:srv').to.sql({dialect:'sqlite'})
  let json= cds.compile.to.json(csn);
  let yaml=cds.compile.to.yaml(csn);
  let edmx=cds.compile.to.edm(csn,{service:'capire'});
  let all = cds.compile.to.hdbtable (csn)
  let csn1 = CDL`entity Foo{}`
  let csn2 = cds.parse (`entity Foo{}`)  //= shortcut to:
  let csn3 = cds.parse.cdl (`entity Foo{}`)
  
  let cqn = CQL`SELECT * from Foo`
  let cqn1 = cds.parse.cql (`SELECT * from Foo`)
  let cxn = CXL`foo.bar > 9`
  let cxn1 = cds.parse.expr (`foo.bar > 9`)


  // console.log(`EDMX ${edmx}`);
//  let asyncdoc=cds.compile.to.asyncapi(Student.csn)
//  console.log("Doc",asyncdoc);
  console.log(`CXN ${cxn}`);
  console.log(`CXN1 ${cxn1}`);
  console.log(`CQN ${cqn}`);
  console.log(`CQN1 ${cqn1}`);
  console.log(`CDL ${csn2}`);
  console.log("EDMX",edmx);
  console.log(`Json ${json}`);
  console.log(`YAML ${yaml}`);
  //console.log("hbd"+all);
  for (let [src,{file}] of all)
  console.log ("hbdtable "+file,src)

  console.log("SQL",sql);
  console.log("CSN",csn);
  console.log("CSN1",csn1);
  console.log("CSN2",csn2);
  console.log("CSN3",csn3);

  let minified = await cds.load('*').then(cds.minify)
  console.log(`Minifies ${minified}`);




  
});

// class Demo extends cds.ApplicationService{
//     init(){
//          let {Student}=this.entities;
//         this.on('READ','Student',req=>{
//             return cds.tx(req).run(SELECT.from(Student,1));
//         })
//         return super.init();
//     }
// }
// module.exports=Demo;
// cds.compile()

