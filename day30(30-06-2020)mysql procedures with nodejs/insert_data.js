let mysql = require('mysql');
let connect = require('./conn.js');
let connection = mysql.createConnection(connect);
let sqlProc = 'call insert_data(?,?)';
let inputParams = ['Abhi','abhi-dsps'];
connection.query(sqlProc,inputParams,(error,results) => {
    if(error){
        return console.error(error.message);
    }
    console.log(results);
});
connection.end();