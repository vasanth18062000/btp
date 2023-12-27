const LOG = cds.log('foo', { level: 'info' })
if(1==1){
    LOG.info ('truelogger', you, 'like...')
}
else{
    LOG.info ('falselogger', you, 'like...')
}