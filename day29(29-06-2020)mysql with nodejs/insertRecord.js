let mysql = require('mysql')
let connection = mysql.createConnection({
         host : 'localhost',
         user : 'root',
         password : 'spandana*18',
         database : 'testDb'
});
let sqlCom = "insert into userData(Username,Password)values('anil','Anil');";
connection.query(sqlCom);
connection.end();