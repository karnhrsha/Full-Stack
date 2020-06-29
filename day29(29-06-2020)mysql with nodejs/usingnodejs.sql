create database testDb;

alter user 'root'@'localhost' identified with mysql_native_password by 'spandana*18';

flush privileges;

use testDb;

create table userData(Id int auto_increment, Username varchar(100) not null,Password varchar(100) not null, primary key(Id));

select * from userData;


update userData set Username = Anil;

drop table userData;

select * from userData;

ALTER TABLE userData
  ADD last_name varchar(40);