const cds = require("@sap/cds");
const conv2ap =require("@sap/cds-odata-v2-adapter-proxy");

cds.on("bootstrap", (app) => app.use(conv2ap()))

module.exports =cds.serve;