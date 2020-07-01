module.exports = app =>{
    const customers = require('../controllers/customer.controller.js');

    //create a new customer
    app.post("/customers",customers.create);
    //retrieve all the users
    app.get('/customers',customers.findAll);
    //single user
    app.get('/customers/:customerId',customers.findOne);
    //update the customer with customerId
    app.get('/customers/:customerId',customers.update);
    //delete a customer with customerId
    app.get('customers/:customerId',customers.delete);
    //delete all
    app.get('/customers',customers.deleteAll);
};