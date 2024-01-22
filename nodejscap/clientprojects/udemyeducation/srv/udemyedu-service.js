// var express = require('express');
// var hana = require('@sap/hana-client');
// var app = express();

// app.get('/', function (req, res) {
//     res.send('Hello World');
// })

// app.get('/Employees', function (req, res) {
//     var connOptions = {
//         serverNode: 'hxehost:39013',
       
//         UID: 'KARTHIKEYAN',
//         PWD: 'Ladera123'
     
//     };

//   var connection = hana.createConnection();
//   connection.connect(connOptions, function(err) {
//       if (err) {
//           return console.error(err);
//       }
//       var sql = 'select * from KARTHIKEYAN.LADERATECHNOLOGY;';
//       var rows = connection.exec(sql, function(err, rows) {
//           if (err) {
//               return console.error(err);
//           }
//           console.log(rows);
//           const { Employees } = this.entities;  
//           this.on('READ', Employees, request => {
//             LOG.info('logger working');
//             return sql;
//         });

//           res.send(rows);
//           connection.disconnect(function(err) {
//               if (err) {
//                   return console.error(err);
//               }   
//           });
//       });
//   });
// })

// const port = process.env.PORT || 4005;
// var server = app.listen(port, function () {
//     var host = server.address().address
//     var port = server.address().port
//     console.log("Example app listening at http://%s:%s", host, port)
// })