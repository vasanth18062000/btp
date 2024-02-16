
// const cds = require('@sap/cds')
// cds.server = module.exports = async function (options) {

//   const app = cds.app = o.app || require('express')()
//   cds.emit ('bootstrap', app)

//   // load model from all sources
//   const csn = await cds.load('*')
//   cds.model = cds.compile.for.nodejs(csn)
//   cds.emit ('loaded', cds.model)

//   // connect to prominent required services
//   if (cds.requires.db)  cds.db = await cds.connect.to ('db')
//   if (cds.requires.messaging)    await cds.connect.to ('messaging')

//   // serve own services as declared in model
//   await cds.serve ('all') .from(csn) .in (app)
//   await cds.emit ('served', cds.services)

//   // launch HTTP server
//   cds .emit ('launching', app)
//   const port = o.port ?? (process.env.PORT || 4004)
//   const server = app.server = app.listen(port) .once ('listening', ()=>
//     cds.emit('listening', { server, url: `http://localhost:${port}` })
//   )
// }
