use classicmodels;

select distinct status from orders;
select * from orders;

select * from products;

select * from customers;

select * from orderdetails;

select a.customerName,b.status,c.productName from customers a,orders b,products c,orderdetails d where a.customerNumber=b.customerNumber and c.productCode=d.productCode and d.orderNumber=b.orderNumber and a.customerNumber=103;

select count(orderNumber) from orders where orderDate >= "2003-01-06" and orderDate <= "2003-01-30";

select * from orders where orderDate between '2003-01-06' and '2003-01-30';

select a.customerName,a.phone,b.orderDate,b.status,c.checkNumber,c.paymentDate,c.amount,d.quantityOrdered,d.priceEach from customers a,orders b,payments c,orderdetails d where 1=1 and a.customerNumber = b.customerNumber and a.customerNumber=c.customerNumber and b.orderNumber=d.orderNumber and orderDate between '2003-01-06' and '2003-01-31';

select * from productlines;

select productName,productCode,textdescription from products a inner join productlines b on a.productline=b.productline;
