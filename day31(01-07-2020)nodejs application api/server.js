const express = require('express');
const bodyparser = require('body-parser');

const app = express();
//content-type:application/json
app.use(bodyparser.json());

app.use(bodyparser.urlencoded({extended:true}));

app.get("/",(req,res)=>{
    res.json({message:'welcome to dhyanahitha'});
});

require('./app/routes/customer.routes.js')(app);

app.listen(3000,()=>{
    console.log('server is running on port 3000');
});