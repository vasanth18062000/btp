module.exports = async srv => {
    const messaging = await cds.connect.to('messaging')
    // const service=require ('@sap/cds');

    srv.on('READ','Electronics', async (_,req) => {
  const { name } = req.data
  const { rating } = await srv.run(
    SELECT.one()
    .from('MessagingService.Electronics')
    .where({ name }))
   console.log("JOKER",rating);
  // send to a topic
  await messaging.emit('my.custom',
   { name, rating })

  // alternative if you want to send custom headers
//   await messaging.emit({ event: 'cap/msg/system/review/reviewed',
//     data: { subject, rating },
//     headers: { 'X-Correlation-ID': req.headers['X-Correlation-ID'] }})
})
  }