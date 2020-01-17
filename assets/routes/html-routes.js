const path = require('path');
const express = require('express');

module.exports = function (app) {
    app.get('/', function (req, res) {
        // res.render('index');
        res.sendFile(path.join(__dirname, "../public/home.html"));
    })

    app.get('/search', function (req, res) {
        res.sendFile(path.join(__dirname, "../public/search.html"))
    })
};