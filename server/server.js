var express = require('express');
var path = require ('path');
var bodyParser = require('body-parser');

var request = require('request');
var app = express();

app.use(express.static(path.join(__dirname, '../site')));

app.get('/', function(req, res) {
    res.sendFile('index.html');
});
app.listen(7777);

console.log("Server created at localhost:7777");

app.use('/submit', function(req, res){
    res.sendFile("http://api.wolframalpha.com/v2/query?input=pi&appid=PG9HJR-3JT67J7J3E&output=xml");
});
