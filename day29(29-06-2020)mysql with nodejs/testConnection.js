let mysql = require('mysql');
let connection = mysql.createConnection({
       host : 'localhost',
       user : 'root',
       password : 'spandana*18',
       databse : 'testDb'

});
connection.connect(function(err){
        if(err){
                 return console.error('error' + err.message);
        }
         console.log('connected to the mysql server');
});
connection.end(function(err){
         if(err){
                  return console.error('error' + err.message);
          }
          console.log('Close the database connection');
});