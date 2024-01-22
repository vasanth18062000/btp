const cds = require('@sap/cds')

module.exports=cds.service.impl(async function(){

    //cds.compile
   let csn=await cds.compile('*');
   console.log("CSN",csn);//returns the overall entities,services,types,aspects and models

   let csn1 = await cds.compile (['db','srv','app'])
   console.log("CSN1",csn1);//returns the overall entities,services,types,aspects and models in db,srv,app

   let csn2 = await cds.compile (['file:srv/cerafurnitures-service.cds','srv/define.cds'])
   console.log("CSN2",csn2);//returns the overall entities,services,types,aspects and models in folder db
    const {Customer}=this.entities;

    let csn3 = cds.compile (CDL`
    using {cuid} from '@sap/cds/common';
    entity Foo : cuid { foo:String }
    entity Bar as projection on Foo;
    extend Foo with { bar:String }
  `)
  console.log(csn3);


  let csn4 = cds.compile ({
    'db/schema.cds': `
      using {cuid} from '@sap/cds/common';
      entity Foo : cuid { foo:String }
    `,
    'srv/services.cds': `
      using {Foo} from '../db/schema';
      entity Bar as projection on Foo;
      extend Foo with { bar:String }
    `,
    '@sap/cds/common.csn': `
      {"definitions":{
        "cuid": { "kind": "aspect", "elements": {
          "ID": { "key":true, "type": "cds.UUID" }
        }}
      }}
    `,
  })




    this.on('READ',Customer,req=>{
        return cds.tx(req).run(SELECT.from(Customer,102))
    })

    
}
)

    






