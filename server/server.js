var express = require('express');
var path = require ('path');
var app = express();

app.use(express.static(path.join(__dirname, '../site')));

app.get('/', function(req, res) {
    res.sendFile('index.html')
});

app.listen(7777);

console.log("Server created at localhost:7777");
