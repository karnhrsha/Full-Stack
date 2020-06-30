let mysql = require('mysql');
let connect = require('./conn.js');
const { error } = require('console');
let connection = mysql.createConnection(connect);
let sqlProc = 'call get_userdetailsusingid(?)';
let inputParams =['1'];
connection.query(sqlProc,inputParams,(error,results) => {
    if(error){
        return console.error(error.message);
    }
    console.log(results[0]);
});
connection.end();
