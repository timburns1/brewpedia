// var mysql = require("mysql");
// var inquirer = require("inquirer");
// var express = require("express");
// var app = express();

// // app.get('/', function (req, res) {
// //     res.send('hello world!')
// // })

// // app.listen(3306)

// var connection = mysql.createConnection({
//     host: "localhost",

//     // Your port
//     port: 3306,

//     // Your username
//     user: "root",

//     // Your password
//     password: "Alexmac34",
//     database: "brewpediaapi"
// });

// //connection

// // connection.connect(function (err) {
// //     if (err) throw err;
// //     console.log("connected as id " + connection.threadId);
// //     afterConnection();
// // });

// // function afterConnection() {
// //     connection.query("SELECT * FROM volume", function (err, res) {
// //         if (err) throw err;
// //         console.log(res);
// //         connection.end();
// //     });
// // }

// connection.connect(function (err) {
//     if (err) throw err;
//     console.log("connection successful!");
//     makeTable();
// })

// var makeTable = function () {
//     connection.query("SELECT * FROM volume", function (err, res) {
//         for (var i = 0; i < res.length; i++) {
//             console.log(res[i].item_id + " || " + res[i].beer_style + " || " + res[i].beer_brewery + " || " + res[i].beer_name + " || " + res[i].beer_color + " || " + res[i].beer_ibu + " || " + res[i].beer_abv + " || " + res[i].beer_nose + " || " + res[i].beer_flavor + " || " + res[i].beer_mouth + " || " + res[i].beer_finish + "/n");
//         }
//     })
// }