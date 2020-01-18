// Dependencies
// =============================================================
var Character = require("../javascript/search");

// Routes
// =============================================================
module.exports = function (app) {
    // Search for Specific Character (or all characters) then provides JSON
    app.get("/api/:beer?", function (req, res) {
        if (req.params.beer) {
            // Display the JSON for ONLY that character.
            // (Note how we're using the ORM here to run our searches)
            Beer.findOne({
                where: {
                    routeName: req.params.Beer
                }
            }).then(function (result) {
                return res.json(result);
            });
        } else {
            beer.findAll().then(function (result) {
                return res.json(result);
            });
        }
    });

    // If a user sends data to add a new character...
    app.post("/api/new", function (req, res) {
        // Take the request...
        var Beer = req.body;

        // Create a routeName

        // Using a RegEx Pattern to remove spaces from character.name
        // You can read more about RegEx Patterns later https://www.regexbuddy.com/regex.html
        var routeName = beer.name.replace(/\s+/g, "").toLowerCase();

        // Then add the character to the database using sequelize
        Beer.create({
            routeName: routeName,
            beer_name: beer_name.name,
            beer_brewery: beer_brewery.brew,
            beer_style: beer_style.style,
            beer_flavor: beer_flavor.flavor
        });

        res.status(204).end();
    });
};