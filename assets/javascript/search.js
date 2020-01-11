var lunr = require('lunr');

let documents = [{
        "name": "Lunr",
        "text": "Like Solr but much smaller and not as bright",
    },
    {
        "name": "React",
        "text": "A JavaScript library for building user interfaces,"
    },
    {
        "name": "lodash",
        "text": "A modern JavaScipt utility library delivering modularity, performance, and extras"
    },
    {
        "name": "Bud Light",
        "text": "Taste like piss"
    },
];

var index = lunr(function () {
    this.ref('name')
    this.field('text')

    documents.forEach(function (doc) {
        this.add(doc)
    }, this)
})

index.search("bright")

console.log(documents)