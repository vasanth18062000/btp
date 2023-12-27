const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
    const { TemplateFileResources } = this.entities;
    const bupa = await cds.connect.to('APIPortal_Applications');
    this.on('READ', 'TemplateFileResource', req => {
        return bupa.tx(request).run(req.query);
    });
});