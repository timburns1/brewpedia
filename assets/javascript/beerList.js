// Code here handles what how the page displays all of the beers
// It pings the server. The server then pings the database and displays our list of beers.

// make a get request to our api to grab every beer
$.get("/api", function (data) {

    // for each beer that our server sends us back
    for (var i = 0; i < data.length; i++) {
        // create a parent div for the oncoming elements
        var wellSection = $("<div>");
        // add a class to this div: 'well'
        wellSection.addClass("well");
        // add an id to the well to mark which well it is
        wellSection.attr("id", "beer-well-" + i);
        // append the well to the well section
        $("#well-section").append(wellSection);

        // Now add all of our beer data to the well we just placed on the page

        // make the name an h2,
        $("#beer-well-" + i).append("<h2>" + data[i].name + "</h2>");
        // the role an h3,
        $("#beer-well-" + i).append("<h3>Brewery: " + data[i].brew + "</h4>");
        // the age an h3,
        $("#beer-well-" + i).append("<h3>Style: " + data[i].style + "</h4>");
        // and the forcepoints an h3.
        $("#beer-well-" + i).append("<h3>Flavor: " + data[i].flavor + "</h4>");
    }
});