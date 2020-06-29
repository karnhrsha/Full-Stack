let mysql = require('mysql');
let connect = require('./conn.js');
let connection = mysql.createConnection(connect);
let sqlComm = "insert into userData(Username,Password) values(?,?)";
let vals =[['dinesh','Dinesh'],['arvind','Arvind-dsps'],['harsha','harsha-dsps']];

connection.query(sqlComm,vals,(err,results)  => {
             if(err){
                      return console.error(err.message);
             }
             console.log('Records inserted successfully');
});
connection.end();