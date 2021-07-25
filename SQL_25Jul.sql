create database demo;
use demo;

create table test(
Name varchar(15),
Age int,
Sex varchar(10));

insert into test values('Vinay', 20, 'Male');
insert into test values('Baggu', 21, 'Male');
insert into test values('Vaibhav', 21, 'Female');
insert into test values('Raksha', 21, 'Female');

select * from test;

SET SQL_SAFE_UPDATES=0;
update test
set Age = '19'
where Name= 'Vinay';


delete from test where Name='Vinay';
select * from test

drop database demo