// Dependencies
// =============================================================
// Sequelize (capital) references the standard library
var Sequelize = require("sequelize");
// sequelize (lowercase) references our connection to the DB.
var sequelize = require("../javascript/connection");
// Creates a "beer" model that matches up with DB
var beer = sequelize.define("beer", {
    // the routeName gets saved as a string
    routeName: Sequelize.STRING,
    // the name of the beer (a string)
    beer_name: Sequelize.STRING,
    // the brewer (a string)
    beer_brewery: Sequelize.STRING,
    // the beer style (a string)
    beer_style: Sequelize.INTEGER,

    // the beer ABV (an int)
    beer_abv: Sequelize.INTEGER
}, {
    // disable the modification of tablenames; By default, sequelize will automatically
    // transform all passed model names (first parameter of define) into plural.
    // if you don't want that, set the following
    freezeTableName: true
});
// Syncs with DB
beer.sync();

module.exports = volume;





// const mysql = require("mysql");
// const inquirer = require("inquirer");
// const express = require("express");
// const app = express();

// const connection = mysql.createConnection({
//     host: "localhost",

//     // Your port
//     port: 3306,

//     // Your username
//     user: "root",

//     // Your password
//     password: "Alexmac34",
//     database: "brewpediaapi"
// });

// connection.connect(function (err) {
//     if (err) throw err;
//     runSearch();
// })

// var runSearch = function () {
//     console.log("Connection successful!");
//     inquirer.prompt({
//         name: "action",
//         type: "rawlist",
//         message: "What would you like to do?",
//         choices: [
//             "Find beer by name",
//             "Find beer by style",
//             "Find beer by brewery",
//         ]
//     }).then(function (answer) {
//         switch (answer) {
//             case "Find beer by name":
//                 nameSearch();
//                 break;

//             case "Find beer by style":
//                 styleSearch();
//                 break;

//             case "Find beer by brewery":
//                 brewerySearch();
//                 break;
//         }

//     });
// }

// function nameSearch() {
//     inquirer
//         .prompt({
//             name: "beer_name",
//             type: "input",
//             message: "What beer would you like to search for?"
//         })
//         .then(function (answer) {
//             var query = "SELECT beer_name, beer_style, beer_brewery FROM volume WHERE ?";
//             connection.query(query, {
//                 beer_name: answer.beer_name
//             }, function (err, res) {
//                 if (err) throw err;
//                 for (var i = 0; i < res.length; i++) {
//                     console.log("Beer NAme: " + res[i].beer_name + " || Beer Style: " + res[i].beer_style + " || Brewery: " + res[i].beer_brewery);
//                 }
//                 runSearch();
//             });
//         });
// }