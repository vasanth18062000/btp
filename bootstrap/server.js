const cds = require('@sap/cds');

cds.server = module.exports = async function (options) {
  const app = cds.app = options.app || require('express')();
  cds.emit('bootstrap', app);

  // load model from all sources
  const csn = await cds.load('*');
  cds.model = cds.compile.for.nodejs(csn);
  cds.emit('loaded', cds.model);

  // connect to SAP HANA Express Edition
  cds.db = await cds.connect.to('hana', {
    kind: 'hana',
    credentials: {
      // Provide your SAP HANA Express Edition connection details here
      host: '192.168.0.219',
      port: '39013',
      user: 'Karthikeyan',
      password: 'Ladera123',
    },
  });

  // serve own services as declared in model
  await cds.serve('all').from(csn).in(app);
  await cds.emit('served', cds.services);

  // launch HTTP server
  cds.emit('launching', app);
  const port = options.port ?? (process.env.PORT || 4004);
  const server = app.server = app.listen(port).once('listening', () =>
    cds.emit('listening', { server, url: `http://localhost:${port}` })
  );
};