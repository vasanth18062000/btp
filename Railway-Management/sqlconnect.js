const mysql = require('mysql');

// Create a MySQL connection
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'ROOT',
  database: 'speed',
});

// Connect to MySQL
connection.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
    return;
  }
  console.log('Connected to MySQL');
});

// Perform MySQL operations here

// Close the connection when done
connection.end((err) => {
  if (err) {
    console.error('Error closing MySQL connection:', err);
    return;
  }
  console.log('MySQL connection closed');
});
