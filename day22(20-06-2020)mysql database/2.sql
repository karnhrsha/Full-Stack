show databases;

use classicmodels;

show tables;

describe customers;

select * from customers;

select * from customers where country = 'USA';

select * from customers where creditLimit >= 50000;

select * from customers where creditLimit between 50000 and 100000;

select customerName from customers where country = 'USA' or country = 'Germany';

select customerName from customers where country in ('USA','Germany');

select * from employees;

select lastName from employees order by lastName;

select distinct lastName from employees order by lastName; 

select * from customers;

select country from customers order by country; 

select distinct country from customers order by country;

select distinct state from customers order by state;

select distinct city from customers order by city;

select * from customers where state is null;

select * from customers where state is not null;

select distinct city,state from customers where state is not null;

select distinct city,state from customers where state is not null order by state,city;

select state from customers group by state;

select distinct state from customers;

select customername as customer_name from customers;

select sum(creditlimit) as sumCredit from customers;

select avg(creditlimit) as Average from customers;

select count(*) as recordCount from customers;

select state from customers;

select count(state) from customers;

select max(creditLimit) as MAXcreditlimit from customers;

select min(creditLimit) as MINcreditlimit from customers;

select count(distinct state) from customers;

select distinct state from customers order by state;

select count(distinct state) from customers where country = 'USA';

select count(distinct state) from customers group by country;

select customername from customers order by customername;

select customername from customers where customername like 'a%';

select customername from customers where customername like '%a';

select customername from customers where customername like 'a_e%';

select customername from customers where customername like '%aa%';

select * from customers limit 5;

select * from customers limit 0,10;

create table t1_emp(Id int auto_increment,EmpName varchar(50) not null,EmpDesg varchar(50) not null, EmpSal int, primary key(Id));

create table t2_emp(Id int auto_increment,EmpName varchar(50) not null,EmpDesg varchar(50) not null, EmpSal int, primary key(Id));

insert into t1_emp(EmpName,EmpDesg,EmpSal) values('anil','trainer',12000),('harsha','developer',1223),('dinesh','developer',1234),('ajay','trainer',1764);

select count(*) from t1_emp;

insert into t2_emp(EmpName,EmpDesg,EmpSal) values('anil','trainer',12000),('harsha','developer',1223),('dinesh','developer',1234),('ajay','trainer',1764),('sandesh','junior developer',123),('saiTeja','developer',981),('ritesh','junior developer',2345),('rakesh','developer',1387);

select count(*) from t2_emp;

select EmpName from t1_emp
union
select EmpName from t2_emp;

select EmpName from t1_emp
union all
select EmpName from t2_emp;

select EmpDesg from t1_emp
union all
select EmpDesg from t2_emp;

select EmpDesg from t1_emp
union
select EmpDesg from t2_emp;

