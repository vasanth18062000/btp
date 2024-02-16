const cds=require ('@sap/cds')
const queryObject=cds.QueryAPI;

module.exports=cds.service.impl(async function (){
      
    // let eventContext=cds.context;
    // let {tenant,user}=eventContext;

    let {tenant,user,id,locale,timestamp}=cds.EventContext;
    console.log(`The Tenant is ${tenant}`);
    console.log(`The User is ${user}`);
    console.log(`The User is ${id}`);
    console.log(`The User is ${locale}`);
    console.log(`The User is ${timestamp}`);

    let {Festival}=this.entities;

    this.on('*',Festival,req=>{
        console.log(`The locale language is${req.locale}`);
        console.log(`The Id is ${req.id}`);
        console.log(`The Tenant is ${req.tenant}`);
        console.log(`The time is ${req.timestamp}`);
        console.log(`The user is ${req.user}`);
        console.log(`The user is ${req.user.id}`);
        console.log(`The user is ${req.user.roles}`);
        req.data.name="DEEPAVALI"
        
        // req.http.res.send("King of Pirates!");
        // req.user=new cds.User({id:"LT404",roles:'ADMIN'});

        // console.log(`The user role  is ${req.user.roles}`);
        // console.log(`The user is ${req.user.id}`);
        // console.log(`Is the user is admin or not = ${req.user.is('ADMIN')}`);
        // let booleans=req.user.is('ADMIN');
        // console.log("The DINOSAUR DEVI IDEA IS ",booleans);

        // req.user=new cds.User.Privileged
        // console.log(`The user is ${req.user.Privileged}`);
    })
 
    req.before('commit', () => {...}) // immediately before calling commit
    req.on('succeeded', () => {...}) // request succeeded, after commit
    req.on('failed', () => {...}) // request failed, after rollback
    req.on('done', () => {...}) 
   

})