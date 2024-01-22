



const cds=require('@sap/cds')
 const{SELECT,UPDATE,INSERT,DELETE}=cds.ql;

module.exports=cds.service.impl(async function(){
    const service =await cds.connect.to('API_BANKDETAIL_SRV');
    const {BankDetail}=this.entities
    

    this.on ('*', function authorize (req,next) {
        console.log('user')
        if (req.user.is('authenticated-user')){
            console.log('is authenticated-user');
             return req.reject('FORBIDDEN')
        }
        else return next() 
      })
      this.on ('READ',BankDetail, req =>{
        // const query=SELECT `BankName` .from `bankdetails.BankDetail`;
        // await return cds.run(query);
        return service.transaction(req).run(req.query)
        //return service.tx(req).run(SELECT.from(BankDetail).where({BankName:'Citibank NY'}));//sending query to the service 

    } 
        )

        this.on('submitOrder',async req=>{
            const {BankName}=req.data
            console.log(BankName);
        })
        // this.on('READ','BankDetail',req=>{
     
            // return service.tx(req).run(SELECT.from(BankDetail).where({BankName:'Citibank NY'}));//sending query to the service 
        // })
    
    

   
   
       
      
   
    }
)
       
   

    //  module.exports=cds.service.impl(async function(){
    //    const {BankDetail}= this.entities
    //    this.on('READ',BankDetail,async req=>{
    //     this.get(
    //   //  return await this.get(BankDetail).where({BankInternalID:20321})
    //    })

    //    this.on('READ',BankDetail,req=>{
    //     this.run()
    //    })
       
    //  })

 
    



// //cds.events class implementations


// const cds=require('@sap/cds')

// cds.Event
//  module.exports=cds.service.impl(async function(){
//      const service =await cds.connect.to('API_BANKDETAIL_SRV');
//      const {A_BankDetail}=this.entities
//      this.on(
//         'READ',A_BankDetail,req=>{

//             //cds.event class methods
//             console.log(req.event);//returns the events name [GET]
//             console.log(req.headers);//returns the header object as nodejs standard http header object
//             console.log(req.data);//returns the data of the object

//             //cds.eventcontext class methods 
//             // const {res}=req.http;
//             // res.send('hello');//send the response as hello 
//             console.log(req.timestamp); //returns the results time, date in console
//             console.log(req.user);//returns anonymous as user
//             console.log(req.locale);//returns the local users language 
//             console.log(req.tenant);//returns the tenant 
            
//             //cds.request class methods
//             console.log(req.method);//returns the equivalent http method for the event[GET]
//             console.log(req.target);//returns the requests or inbound events target entity
//             console.log(req.path);// returns the full path [CatalogService.User]
//             console.log(req.query);//returns the query in cqn query object 
//             const [vaf,vas]=req.params
//             console.log(vaf,vas);//returns the parameters passed in the URL
//             // req.reject('request not in format')

//             // console.log();   
//         //     req.error({code: '89',
//         //     message: 'request not in format',
//         //     target: 'some_field',
//         //     status: 418
//         // })//returns the error message as customized in xml format
//         // req.error({ 
//         //   code: '501',
//         //   message: 'Unsupported functionality',
//         //   target: 'query',
        
//         //     "details": [
        
//         //       {
        
//         //        "code": "301",
        
//         //        "target": "$search" 
        
//         //        "message": "$search query option not supported",
        
//         //       }
        
//         //     ]
        
//         //     "innererror": {
        
//         //       "trace": [...],
        
//         //       "context": {...}
        
//         //     }
        
//         //   }
        
//         // }})
//         const diff = req.diff()
//         console.log(diff);
          
             
//             return service.tx(req).run(req.query)

//         }
//      )
// } )
// // //______________________________________________________________________________________________________

// // //    const srv=new cds.Service.on('READ',A_)

