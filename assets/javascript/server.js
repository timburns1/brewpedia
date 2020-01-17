var express = require("express");

// Sets up the Express App
// =============================================================
var app = express();
var PORT = process.env.PORT || 8080;

app.use(express.urlencoded({
    extended: true
}));
app.use(express.json());

// Static directory to be served
app.use(express.static("../public"));


// Here we introduce HTML routing to serve different HTML files
require("../routes/html-routes")(app);

// Starts the server to begin listening
// =============================================================
app.listen(PORT, function () {
    console.log("App listening on PORT " + PORT);
});



// const mysql = require('mysql');
// const express = require('express');
// const bodyParser = require('body-parser');

// var app = express();
// app.use(bodyParser.json());

// var mysqlConnection = mysql.createConnection({
//     host: "localhost",
//     user: "root",
//     password: "Alexmac34",
//     database: "brewpediaapi",
//     multipleStatements: true
// });

// mysqlConnection.connect((err) => {
//     if (err) {
//         console.log("Connected");
//     } else {
//         console.log("Connection failed");
//     }
// })

// app.listen(3306);