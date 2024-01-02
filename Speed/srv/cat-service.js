// module.exports = (srv) => {

//     const {CartEntry} = cds.entities ('com.ladera.utcl.speed')
  
//     // Reduce stock of ordered books
//     srv.before ('CREATE', 'Product', async (req) => {
//       const prod = req.data
//       if (!prod.Product || prod.Product <= 0)  return req.error (400, 'CartEntry at least 1 product')
//       const tx = cds.transaction(req)
//       const affectedRows = await tx.run (
//         UPDATE (CartEntry)
//           .set   ({ product: {'-=': prod.ID}})
//           .where ({ product: {'>=': prod.ID},/*and*/ ID: prod.ID})  
//       )
//       if (affectedRows === 0)  req.error (409, "Sold out, sorry")
//     })
  
//     // Add some discount for overstocked books
//     // srv.after ('READ', 'CartEntry', each => {
//     //   if (each.product > 800)  each.ID += ' -- 11% discount!'
//     // })
  
//   }
  