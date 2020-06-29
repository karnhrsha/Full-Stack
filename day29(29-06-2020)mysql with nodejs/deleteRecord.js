let mysql = require('mysql');
let connect = require('./conn.js');
let connection = mysql.createConnection(connect);
let sqlCom = "alter table userData drop last_name;";
connection.query(sqlCom,(err,results) => {
         if(err) {
                   return console.error(err.message);
          }
          console.log('a record is deleted');
});
connection.end();

