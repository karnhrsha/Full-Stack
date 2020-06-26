use classicmodels;

select * from customers;

select customerNumber,customerName,phone,city,state,country,creditLimit from customers;

create view getCustomerData
as
select customerNumber,customerName,phone,city,state,country,creditLimit from customers;

select * from getCustomerData;

select customerNumber,phone from getCustomerData;

insert into getCustomerData(customerNumber,customerName,phone,city,state,country,creditLimit)values
('999','Anil','9949044980','Hyd','TS','India',189.0);

select * from customers where customerNumber=103;

create view getCustomerOrdersData
as
select a.customerName,a.phone,a.addressLine1,b.orderDate,b.status
from customers a,orders b
where a.customerNumber = b.customerNumber;

select * from getCustomerOrdersData;

rename table getCustomerOrdersData
to getCustomerOrdersData_new;

SHOW FULL TABLES IN classicmodels where table_type like 'view';

RENAME TABLE T1_EMP TO T1;

SELECT * FROM T1;

ALTER TABLE T1
ADD COLUMN EMAILID VARCHAR(100) NOT NULL;

DESCRIBE T1;

ALTER TABLE T1
ADD COLUMN PHONENUMBER BIGINT UNIQUE,
ADD COLUMN ADDRESS VARCHAR(100);

ALTER TABLE T1
DROP column PHONENUMBER;

ALTER TABLE T1
RENAME COLUMN ADDRESS TO Address;

drop table t1;

