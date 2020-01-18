// Dependencies
// =============================================================

// Sequelize (capital) references the standard library
var Sequelize = require("sequelize");
// sequelize (lowercase) references our connection to the DB.
var sequelize = require("../javascript/connection");

// Creates a "Character" model that matches up with DB
var Beer = sequelize.define("beer", {
    // the routeName gets saved as a string
    routeName: Sequelize.STRING,
    // the name of the character (a string)
    beer_name: Sequelize.STRING,
    // the character's role (a string)
    beer_brewery: Sequelize.STRING,
    // the character's age (a string)
    beer_style: Sequelize.INTEGER,

    // and the character's force points (an int)
    beer_abv: Sequelize.INTEGER
}, {
    // disable the modification of tablenames; By default, sequelize will automatically
    // transform all passed model names (first parameter of define) into plural.
    // if you don't want that, set the following
    freezeTableName: true
});

// Syncs with DB
Beer.sync();

// Makes the Character Model available for other files (will also create a table)
module.exports = Beer;







// const mysql = require('mysql');

// mysql.createPool({
//     connectionLimit: 10,
//     password: 'Alexmac34',
//     user: 'root',
//     host: 'localhost',
//     port: '3306'
// });

// let brewdb = {};

// brewdb.all = () => {

//     return new Promise((resolve, reject) {
//         pool.query('SELECT * FROM brewpediaapi', (err, results) => {
//             if (err) {
//                 return reject(err);
//             }

//             return resolve(results)
//         })
//     })

// }

// module.exports = brewdb;