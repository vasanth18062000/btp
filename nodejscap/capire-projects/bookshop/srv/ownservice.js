module.exports = async srv => {
    const externalService = await cds.connect.to('ExternalService')
    externalService.on('ExternalEvent', async msg => {
      await srv.emit('OwnEvent', msg.data)
    })
  }