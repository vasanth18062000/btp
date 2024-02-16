const cds=require ('@sap/cds')

       const any=cds.server(); 

module.exports=cds.service.impl (async function () {
    let csn=await cds.compile("*");
    const reflectedModel=cds.linked(csn);
    
     const [reflectService]=reflectedModel.services
     const[Mobile]=reflectedModel.entities;
    
     console.log(`CAPIRE ${reflectService.kind}`);
     console.log(`ENTITIES ${Mobile.kind}`);
     /**
      * To find all the entity and the m.each method returns an iterator 
      */
     let m = cds.reflect (csn)
    for (let d of m.each('entity')) {
     console.log (d.kind, d.name)
}     
     
  /**
   * To find all the services defined in the Service
   */
    for (let d of m.all('service')){
      console.log(d.kind, d.name);
    }
    /**
     * To find the first entity matching the definition
     */
    let Entity= m.find('entity') 
      console.log("First Entity is ",Entity.name, Entity.kind);
    /**
     * To find out the particular association in the  specified entity which is specified as the third argument 
     */
      m.foreach('Association',serv=>{
        console.log(`Association name is ${serv.name}`);
        console.log(`Association kind is ${serv.kind}`);
      },Entity.elements
      )
      /**
       * To find out all the services defined! 
       */
      m.forall('service',i=>{
        console.log(`The Services are ${i.name}`);
      })
     /**
      * To find out the all the defined entities
      */
      m.forall('entity',i=>{
        console.log(`The Entities are ${i.name}`);
      })
  
      if(Mobile instanceof cds.entity){
        console.log("Yes it is one!");
      }
       
    

    })