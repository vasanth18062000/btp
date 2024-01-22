 async function cds_server (options) {
 const _in_prod = process.env.NODE_ENV === 'production'
 const o = { ...options, __proto__:defaults }

// const app = cds.app = o.app || express()
// app.serve = _app_serve                          //> app.serve allows delegating to sub modules
// cds.emit ('bootstrap',app)                      //> hook for project-local server.js

// // mount static resources and logger middleware
// if (o.cors)      !_in_prod && app.use (o.cors)        //> CORS
// if (o.static)    app.use (express_static (o.static))  //> defaults to ./app
// if (o.favicon)   app.use ('/favicon.ico', o.favicon)  //> if none in ./app
// if (o.index)     app.get ('/',o.index)                //> if none in ./app

// // load specified models or all in project
// const csn = await cds.load(o.from||'*',o) .then (cds.minify) //> separate csn for _init_db
// cds.model = cds.compile.for.nodejs(csn)

// // connect to essential framework services if required
// if (cds.requires.db) cds.db = await cds.connect.to ('db') .then (_init)
// if (cds.requires.messaging)   await cds.connect.to ('messaging')

// // serve all services declared in models
// await cds.serve (o.service,o) .in (app)
// await cds.emit ('served', cds.services) //> hook for listeners

// // start http server
// // const port = (o.port !== undefined) ? o.port : (process.env.PORT || cds.env.server?.port || 4005)

// // const port = o.port ?? (process.env.PORT || 4005)

// console.log("PORT", port);

// return app.server = app.listen (port)

// // bootstrap in-memory db
// async function _init (db) {
//   if (!o.in_memory || cds.requires.multitenancy) return db
//   const fts = cds.requires.toggles && cds.resolve (features.folders)
//   const m = !fts ? csn : await cds.load([o.from||'*',...fts],o) .then (cds.minify)
//   return cds.deploy(m).to(db,o)
// }
// }

const cds = require('@sap/cds')
cds.server = module.exports = async function (options) {

  const app = cds.app = o.app || require('express')()
  cds.emit ('bootstrap', app)

  // load model from all sources
  const csn = await cds.load('*')
  cds.model = cds.compile.for.nodejs(csn)
  cds.emit ('loaded', cds.model)

  // connect to prominent required services
  if (cds.requires.db)  cds.db = await cds.connect.to ('db')
  if (cds.requires.messaging)    await cds.connect.to ('messaging')

  // serve own services as declared in model
  await cds.serve ('all') .from(csn) .in (app)
  await cds.emit ('served', cds.services)

  // launch HTTP server
  cds .emit ('launching', app)
  const port =  4005
  const server = app.server = app.listen(port) .once ('listening', ()=>
    cds.emit('listening', { server, url: `http://localhost:${port}` })
  )
}
 }