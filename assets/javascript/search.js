var mysql = require("mysql");
var inquirer = require("inquirer");
var express = require("express");
var app = express();

app.get('/', function (req, res) {
    res.send('hello world!')
})

app.listen(3306)

var connection = mysql.createConnection({
    host: "localhost",

    // Your port
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "Alexmac34",
    database: "brewpediaapi"
});

//connection

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    afterConnection();
});

function afterConnection() {
    connection.query("SELECT * FROM volume", function (err, res) {
        if (err) throw err;
        console.log(res);
        connection.end();
    });
}