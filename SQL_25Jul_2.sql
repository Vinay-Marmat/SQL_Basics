create database day1;
use day1;
create table employee(
e_id int not null,
e_Name varchar(20),
e_Salary int,
e_Age int,
e_Gender varchar(20),
primary key(e_id));

insert into employee values(1,'Nattu',40000,24,'Male');
insert into employee values(2,'Jethalal',105000,23,'Male');
insert into employee values(3,'Bagha',35000,24,'Male');
insert into employee values(4,'Babitaji',60000,24,'Female');
select e_id,e_Name from employee;
select * from employee;
select distinct e_gender from employee;

select * from employee where e_Name = 'Bagha';

select * from employee where e_Age<25 AND e_Gender='Female';