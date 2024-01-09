
var axios = require('axios');
var express = require('express');
var hana = require('@sap/hana-client');
var app = express();

const VCAP_SERVICES = JSON.parse(process.env.VCAP_SERVICES);
const conSrvCred = VCAP_SERVICES.connectivity[0].credentials;

app.get('/', function (req, res) {
    res.send('Hello World');
})

app.get('/Customers', async function (req, res) {
    const connJwtToken = await _fetchJwtToken(conSrvCred.token_service_url, conSrvCred.clientid, conSrvCred.clientsecret);

    var connOptions = {
        serverNode: 'sap_cc_host:6405', // Virtual host specified in the Cloud Connector
        proxyUsername: connJwtToken,
        proxyPort: conSrvCred.onpremise_socks5_proxy_port,
        proxyHostname: conSrvCred.onpremise_proxy_host,
        //proxyScpAccount: 'myLocID',  // Cloud Connector's location ID if specified in the Cloud Connector
                                       // A location ID is used when multiple Cloud Connectors are connected to the same subaccount
        UID: 'KARTHIKEYAN',
        PWD: 'Ladera123'
        //traceFile: 'stdout',
        //traceOptions: 'sql=warning'
    };

    var connection = hana.createConnection();
    connection.connect(connOptions, function(err) {
        if (err) {
            return console.error(err);
        }
        var sql = 'select * from KARTHIKEYAN.LADERATECHNOLOGY;';
        var rows = connection.exec(sql, function(err, rows) {
            if (err) {
                return console.error(err);
            }
            console.log(rows);
            res.send(rows);
            connection.disconnect(function(err) {
                if (err) {
                    return console.error(err);
                }   
            });
        });
    });
})

const port = process.env.PORT || 3000;
var server = app.listen(port, function () {
     var host = server.address().address
     var port = server.address().port
     console.log("Example app listening at http://%s:%s", host, port)
})

const _fetchJwtToken = async function(oauthUrl, oauthClient, oauthSecret) {
	return new Promise ((resolve, reject) => {
		const tokenUrl = oauthUrl + '/oauth/token?grant_type=client_credentials&response_type=token'  
        const config = {
			headers: {
			   Authorization: "Basic " + Buffer.from(oauthClient + ':' + oauthSecret).toString("base64")
			}
        }
		axios.get(tokenUrl, config)
        .then(response => {
		   resolve(response.data.access_token)
        })
        .catch(error => {
		   reject(error)
        })
	})   
}