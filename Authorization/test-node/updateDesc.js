const fetch = require('node-fetch');

//replace with your url from the service manager binding
const url = "https://7334a4f6trial.authentication.us10.hana.ondemand.com";
const oauthUrl = url + "/oauth/token?grant_type=client_credentials";
//replace with your sm_url
const smUrl = "https://service-manager.cfapps.us10.hana.ondemand.com";
//fill in your clientid and clientsecret here or remove lines 9-11 and uncomment line 12 to use environment variables
// const clientId = "sb-bf2709d8-c0ed-4556-b048-fd0ec19d56ca!b224605|service-manager!b1476";
// const clientSecret = "82fcf99a-a0af-4aa2-aef2-2b0e5f4468b1$ZgnkXKvNTAqHmRRmIaWPo4WuS0n4gUxN0s_n-iYpJSc=";
// const auth = "Basic " + Buffer.from(clientId + ":" + clientSecret).toString('base64');
const auth = "Basic " + Buffer.from(process.env.CLIENT_ID + ":" + process.env.CLIENT_SECRET).toString('base64');
// Note, on Windows, precede | with ^| in the clientid when setting the environment variable

//replace with your HANA Database instance id
const instanceId = "2a24da70-607e-4295-b434-1499f32b66e8";

const authHeaders = {
  "Content-Type": "application/json",
  "Authorization": auth
}

var requestHeaders = {
  "Content-Type": "application/json",
  "authorization": "Bearer "
}

const jsonData = {
    "parameters": {
        "metadata": {
          "ui.hc.sap.com/description": "Updated via service manager REST API"
        }
    }
}


//get the bearer token
fetch(oauthUrl, { method: 'GET', headers: authHeaders })
  .then((res) => {
    return res.json()
  })
  .then((authResult) => {
    //add the bearer token to the authorization header
    requestHeaders.authorization = requestHeaders.authorization + authResult.access_token;

    //make a request to update the description
    fetch(smUrl + "/v1/service_instances/" + instanceId, { method: 'PATCH', headers: requestHeaders, body: JSON.stringify(jsonData) })
      .then((res) => {
        console.log("HTTP Status: " + res.status);
        return res.json()
      })
      .then((result) => {
        console.log(JSON.stringify(result, null, 2));
      });
  });
