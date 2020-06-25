show databases;
 use classicmodels;
 
 show tables;
 
 select * from customers;
 
 call get_distinctCountry();
 
 select * from customers;
 
 call get_customerDetails(103);
 
 call get_customerswithcountryandname('USA');
 
 create table Registration(
     Id int auto_increment,
     username varchar(100) not null,
     password varchar(100) not null,
     EmailId varchar(100) not null,
     phone bigint,
     Address varchar(300),
     DateofBirth datetime,
     primary key(Id)
 );
 
 create table loginDetails(
    Id int auto_increment,
    username varchar(100) not null,
    password varchar(100),
    primary key(Id)
 );
 
 call insert_userdetails('Anil','anil','anil@dsps.org',9956789543,'Hyd','2020/01/01');
 
 select * from loginDetails;
 
 select * from Registration;
 
 call insert_userdetails('Harsha','harsha','harsha@dsps.org',8899789543,'Hyd','2020/08/01');
 
 call insert_userdetails('varma','varma','varma@dsps.org',8899787743,'Hyd','2020/08/14');
 
 call test_login('Harsha','harsha');
 
 call update_Login('harshadsps');
 
 
 
 
 
 
 
 
 
 
 