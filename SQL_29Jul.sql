create database July29;

use day4;
create table data29(
e_id int,
e_name varchar(20),
e_salary int,
e_age int,
e_gender varchar(20),
e_dept varchar(20)
)

insert into data29 values(1,'Sam', 95000, 45, 'Male', 'Operations')
insert into data29 values(2,'Bob', 80000, 21, 'Male', 'Support')
insert into data29 values(3,'Anne', 125000, 25, 'Female', 'Analytics')
insert into data29 values(4,'Julia',73000,30, 'Female','Analytics')
insert into data29 values(5,'Matt',159000,33, 'Male', 'Sales')
insert into data29 values(6,'Jeff',112000,27,'Male','Operations')


select * from company where 'J%';
select * from company where e_name like 'J%'; 
select * from company where e_age like '3_';
select * from company where e_age between 25 and 35;

select min(e_age) from company;
select max(e_age) from company;
select count(*) from company where e_gender = 'Male';
select count(*) from company where e_gender = 'Female';
select sum(e_salary) from company;

select '    dude';
select ltrim('    dude');

select 'OR BHAI BAGGU';
select reverse('Vinay Marmat');

select 'This is sparta';
select substring('This is sparta',9,6);


select * from company;
select * from company limit 4;
select avg(e_salary),e_gender from company group by e_gender;
select avg(e_age),e_gender from company group by e_gender;