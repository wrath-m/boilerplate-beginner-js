/**
 * Module dependencies.
 */
const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');

/**
 * Create Express server.
 */
const app = express();

/**
 * Express configuration.
 */
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

/*app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname + '/public/index.html'));
});*/

app.use(express.static('public'));

/**
 * Start Express server.
 */
app.listen(8080, () => {
    //
});