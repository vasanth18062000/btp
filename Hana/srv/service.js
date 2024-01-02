const cds = require('@sap/cds')
module.exports = cds.service.impl(function () {
    this.on('demo', async () => {
    try {
        // let dbQuery = ' Call "demo"( )'
        // cds.log().info(dbQuery)
        let result = await cds.run('Call "demo"( )',{ })
        cds.log().info(result)
        return result
    } catch (error) {
        cds.log().error(error)
        return dbQuery
    }
    })
})