const sql = require('./db.js');

const Customer = function(Customer){
    this.email = customer.email;
    this.name = customer.name;
    this.active = customer.active;
};

Customer.create = (newCustomer,result) => {
    sql.query('Insert into customers set ?',newCustomer,(err,res) =>{
        if(err){
            console.log(err);
            result(err,null);
            return;
        }
        console.log("created customer :",{id:res.insertedId,...newCustomer});
        return (null,{id:res.insertedId,...newCustomer});
    })
};
Customer.findById = (customerId,result)=>{
    sql.query('select * from customers where Id = ${customerId}',(err,res)=>{
        if(err){
            console.log(err);
            result(err,null);
            return;
        }
        if(res.length){
            console.log('found customer:',res[0]);
            result(null,res[0]);
            return;
        }
        result({kind:'not_found'},null);
    })
};

Customer.getAll = result =>{
    sql.query('select * from customers',(err,res) =>{
        if(err){
            console.log(err);
            result(err,null);
            return;
        }
        console.log('Customers : ',res);
        result(null,res);
    })
};

Customer.updateById = (id,customer,result) =>{
    sql.query('Update customers set email =?,name = ?,active = ? where id =?',
    [customer.email,customer.name,customer.active,id],(err,res)=>{
        if(err){
            console.log(err);
            result(null,res);
            return;
        }
        if(res.affectedRows == 0){
            result({kind:'Not_Found'},null);
            return;
        }
        console.log('updated customer : ',{id:id,...customer});
        result(null,{id:id,...customer});
    });
};


Customer.remove =(id,result)=>{
    sql.query('delete from customers where id = ?',id,(err,res)=>{
        if(err){
            console.log(err);
            result(null,res);
            return;
        }
        if(res.affectedRows == 0){
            result({kind:'Not_Found'},null);
            return;
        }
        console.log('deleted customer with id ',id);
        result(null,res);
    });
};

Customer.removeAll = result =>{
    sql.query('delete from customers',(err,res)=>{
        if(err){
            console.log(err);
            result(null,res);
            return;
        }
        console.log('delete ${res.affectedRows} customers');
        result(null,res);
    });
};

module.exports = Customer;