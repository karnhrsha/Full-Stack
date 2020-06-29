let mysql = require('mysql');
let connect = require('./conn.js');
let connection = mysql.createConnection(connect);
let sqlCom = "update userData set Username = 'Anil' , Password = 'anil-dsps' where Id = 2; ";
connection.query(sqlCom,(err,results) => {
         if(err) {
                   return console.error(err.message);
          }
          console.log('Record is Updated');
});
connection.end();

