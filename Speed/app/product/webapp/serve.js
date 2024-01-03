// const express = require('express');

const express = require('express');

const hdb = require('hdb');

const body_parser = require('body-parser');

const session = require ('express-session');
const HanaDatabase = require('@sap/cds/libx/_runtime/hana/Service');
const { connect } = require('hdb/lib');
const { Result } = require('hdb/lib/protocol');

const app = express();

app.use(body_parser.urlencoded({extended : false}));

app.use(body_parser.json());

//middleware for serving static file
app.use(express.static('public'));

//Set up EJS as template engine
app.set('view engine', 'ejs');

//Make hdb connection
const connection=hdb.createClient({
    host:'localhost',
    database:'4d2681d2-4da9-489e-9429-9f74a23e32aa',
    user : 'DBADMIN',
    password : 'Connect@123'

});

//check hdb connection
// connection.connect((error)=>{
//     console.log('hdb is connected successfully');
// });

//set up session middleware


//create route for load product data
app.get("/",(req,res)=>{
    const query = req.query(`SELECT * FROM COM_LADERA_UTCL_SPEED_PRODUCT`);

//execute query
connect.query(query,(error,Result)=>{
    if(!req.session.cart){
        req.session.cart = [];
    }
    res.render('COM_LADERA_UTCL_SPEED_PRODUCT',{products : Result,cart : req.session.cart})
});
});

app.listen(3000, ()=>{
    console.log('server has started on port number 3000');
});