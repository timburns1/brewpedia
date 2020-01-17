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