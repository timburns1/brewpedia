const express = require('express');
const routes = require('./routes');
const app = express();

app.use(express.json());
app.use('/brewpedia.sql', routes)
app.listen(process.env.PORT || '3306', () => {
    console.log('server is running on PORT: '
        $ {
            process.env.PORT || '3306'
        });

});