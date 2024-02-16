const cds = require('@sap/cds');

// Reference HANA driver in the Node app and update the connection details
let dbClass = require('sap-hdbext-promisfied')  //npm module must be installed for this
let hana = require('@sap/hana-client');

// Modify the host IP and password based on your system information
let hanaConfig = {
    host: '192.168.0.219',
    port: `39013`,
    sslValidateCertificate: false,
    encrypt: true,
    user: `KARTHIKEYAN`,
    password: 'Ladera123'
}

const LOG=cds.log("HANA ON PREMISE ");

// Execute the query and output the results
async function intro(req,res) {
    try {
        let db = new dbClass(await dbClass.createConnection(hanaConfig))
        let rows = await db.execSQL("select * from KARTHIKEYAN.LADERATECHNOLOGY");
        LOG.info("Data fetched from HANA ", rows);
        return rows;
    } catch (error) {
        return console.error(error)
    }
}
 
const express = require('express');
const app = express();

app.get('/fetchData', async (req, res) => {
    try {
        const Employee = await intro(req, res); // Call the intro function to fetch data
        res.json(Employee); // Send the fetched data as JSON response
        
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Failed to fetch data' });
    }
});

const port = process.env.PORT || 3000;


app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});




