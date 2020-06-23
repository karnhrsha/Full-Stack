show databases;

use classicmodels;

show tables;

select * from t1_emp;
select * from t2_emp;

select empname from t1_emp
intersect
select empname from t2_emp;

select empname from t1_emp
minus
select empname from t2_emp;

use full_stack;
show tables;

create table tbl_student(
id int auto_increment,
studentname varchar(50) not null,
emailid varchar(50) not null,
studentpwd varchar(30) not null,
phonenumber bigint,
age int not null,
deptid int,
primary key(id)
);

create table tbl_dept(
deptid int auto_increment,
deptname varchar(50) not null,
deptlocation varchar(50) not null,
primary key(deptid)
);

select * from tbl_student;

select * from tbl_dept;

insert into tbl_student(studentname,emailid,studentpwd,phonenumber,age,deptid)values ('anil','asgvha@gmail.com','csvgh','4489646484','18',1),('ani','sgvha@gmail.com','csvh','9489646484','20',3),('nil','asgva@gmail.com','csvg','6689646484','17',2);

insert into tbl_dept(deptname,deptlocation)values ('cse','hyd'),('eee','dvk'),('ece','mlp');

select studentname,phonenumber,age,deptname,deptlocation from tbl_student,tbl_dept 
where tbl_student.deptid=tbl_dept.deptid;

select a.studentname,a.phonenumber,a.age,b.deptname,b.deptlocation from tbl_student a,tbl_dept b 
where a.deptid=b.deptid;

select a.studentname,a.phonenumber,a.age,b.deptname,b.deptlocation from tbl_student a,tbl_dept b 
where a.deptid=b.deptid  and a.age>18;

select a.studentname,a.phonenumber,a.age,b.deptname,b.deptlocation from tbl_student a,tbl_dept b 
where a.deptid=b.deptid  and a.age>18 and b.deptid=1 ;

select a.studentname,a.phonenumber,a.age,b.deptname,b.deptlocation from tbl_student a,tbl_dept b 
where a.deptid=b.deptid  and a.studentname like 'a%' and a.deptid in (1) ;

select a.studentname,a.phonenumber,a.age,b.deptname,b.deptlocation from tbl_student a,tbl_dept b 
where a.deptid=b.deptid  and a.studentname like 'a%' and a.deptid in (1,2,3) ;

show databases;

use classicmodels;

show tables;

describe customers;

describe orderdetails;

describe orders;

describe offices;

describe payments;

describe productlines;

describe products;

select a.customerName,a.phone,a.creditLimit,b.shippedDate ,b.status from customers a,orders b
where a.customerNumber=b.customerNumber;

select a.customerName,a.phone,a.creditLimit,b.shippedDate, b.status from customers a,orders b
where a.customerNumber=b.customerNumber and b.status='Cancelled';