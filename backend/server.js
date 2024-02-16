const express = require('express')
const app = express();
const xssec = require('@sap/xssec')
const xsenv = require('@sap/xsenv')
const passport = require('passport')
const JWTStrategy = xssec.JWTStrategy
const UAA_CREDENTIALS = xsenv.getServices({myXsuaa: {tag: 'xsuaa'}}).myXsuaa
passport.use('JWT', new JWTStrategy(UAA_CREDENTIALS))
app.use(passport.initialize())
app.use(express.json())

// start server
app.listen(process.env.PORT)

// Endpoint to be called by frontend app
app.get('/endpoint', passport.authenticate('JWT', {session: false}), (req, res) => {
    const auth = req.authInfo  
    if (! auth.checkScope(UAA_CREDENTIALS.xsappname + '.backendscope')) {
        res.status(403).end('Forbidden. Missing authorization.')
    }      

    // The fake audit logging
    console.log(`===> [AUDIT] backend called by user '${auth.getGivenName()}' from subdomain '${auth.getSubdomain()}' with oauth client: '${auth.getClientId()}'`)

    res.json({'jwtToken': auth.getAppToken()})
})