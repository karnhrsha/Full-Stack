let mysql = require('mysql');
let connect = require('./conn.js');
let connection = mysql.createConnection(connect);
let sqlProc = 'call update_data(?,?)';
let inputParams = ['anil','Anil-123'];
connection.query(sqlProc,inputParams,(error,results) => {
    if(error){
        return console.error(error.message);
    }
    console.log(results);
});
connection.end();