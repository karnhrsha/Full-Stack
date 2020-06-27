var http = require('http');
var dt = require('./name');
http.createServer(function(req,res){
             res.writeHead(200,{'Content-Type':'text/html'});
             res.write(dt.myName());
}).listen(8080);