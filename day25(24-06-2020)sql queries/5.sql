show databases;

use classicmodels;

show tables;

select * from customers;

select * from orders;

select a.customerName,a.customerNumber,b.orderNumber,b.status from customers a left join orders b on a.customerNumber=b.customerNumber;

select a.customerName,a.customerNumber,b.orderNumber,b.status from customers a left join orders b on a.customerNumber=b.customerNumber where ordernumber is null;

select a.customerName,a.customerNumber,b.orderNumber,b.status from customers a left join orders b on a.customerNumber=b.customerNumber where ordernumber is not null; 

select * from payments;

select * from employees;

select a.firstname,a.lastname,c.checknumber,c.amount
 from employees a 
 left join payments c on 
 c.customernumber=a.employeenumber;
 
 select a.customerName,a.customerNumber,b.orderNumber,b.status 
 from customers a right join orders b 
 on a.customerNumber=b.customerNumber;
 
 select customername,phone,city,state,postalcode,country from customers order by customername;
 
 DELIMITER $$
 create procedure getCustomersData()
 begin
  select customername,phone,city,state,postalcode,country from customers order by customername;
  end$$
  
  call getCustomersData()
  
 call getOrdersDetails()
 