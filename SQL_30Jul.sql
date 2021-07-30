create database day5;

use day5;
create table company_data(
e_id int,
e_name varchar(20),
e_salary int,
e_age int,
e_gender varchar(20),
e_dept varchar(20)
)

insert into company_data values(1,'Sam', 95000, 45, 'Male', 'Operations')
insert into company_data values(2,'Bob', 80000, 21, 'Male', 'Support')
insert into company_data values(3,'Anne', 125000, 25, 'Female', 'Analytics')
insert into company_data values(4,'Julia',73000,30, 'Female','Analytics')
insert into company_data values(5,'Matt',159000,33, 'Male', 'Sales')
insert into company_data values(6,'Jeff',112000,27,'Male','Operations')

select * from company_data;

select * from company_data limit 3;

select avg(e_salary),e_dept from company_data group by e_dept;

select avg(e_age),e_dept from company_data group by e_dept order by avg(e_age) DESC;

select avg(e_salary), e_dept as avg_salary
from company_data
group by e_dept
having avg(e_salary)>100000
order by avg_salary desc;
SET SQL_SAFE_UPDATES=0;
update company_data set e_age = 42 where e_name='Sam';
select * from company_data;
update company_data set e_dept = 'Tech' where e_gender='Female';
select * from company_data;
delete from company_data where e_age=33;
select * from company_data;


truncate table company_data;
select * from company_data;


insert into company_data values(1,'Sam', 95000, 45, 'Male', 'Operations')
insert into company_data values(2,'Bob', 80000, 21, 'Male', 'Support')
insert into company_data values(3,'Anne', 125000, 25, 'Female', 'Analytics')
insert into company_data values(4,'Julia',73000,30, 'Female','Analytics')
insert into company_data values(5,'Matt',159000,33, 'Male', 'Sales')
insert into company_data values(6,'Jeff',112000,27,'Male','Operations')

select * from company_data;

create table Department(
d_id int,
d_name varchar(20),
d_location varchar(20)
)

insert into Department values(1, 'Content','New York')
insert into Department values(2, 'Support','Chicago')
insert into Department values(3, 'Analytics','New York')
insert into Department values(4, 'Sales','Boston')
insert into Department values(5, 'Tech','Dallas')
insert into Department values(6, 'Finance','Chicago')

select * from Department;
select company_data.e_name, company_data.e_dept, Department.d_name, Department.d_location
from company_data inner join Department
on company_data.e_dept = Department.d_name
