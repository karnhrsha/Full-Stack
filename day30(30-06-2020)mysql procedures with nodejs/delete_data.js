let mysql = require('mysql');
let connect = require('./conn.js');
let connection = mysql.createConnection(connect);
let sqlProc = 'call deleteUserData(?)';
let inputParams = ['Abhi'];
connection.query(sqlProc,inputParams,(error,results) => {
    if(error){
        return console.error(error.message);
    }
    console.log(results);
});
connection.end();