create database Student;
use Student;

create table Student_Details1 (
s_id int,
s_name varchar(10),
s_marks int
)
insert into Student_Details1 values(1,'Sam', 45)
insert into Student_Details1 values(2,'Bob', 87)
insert into Student_Details1 values(3, 'Anne',73)
insert into Student_Details1 values(4,'Julia',92)


create table Student_Details2(
s_id int,
s_name varchar(10),
s_karke int
)
insert into Student_Details2 values(3,'Anne',73)
insert into Student_Details2 values(4,'Julia',92)
insert into Student_Details2 values(5,'Matt',65) 

select * from Student_Details1;
select * from Student_Details2;

select * from Student_Details1 union all select * from Student_Details2;

select * from Student_Details1 
intersect 
select * from Student_Detail2;

use day5;
create view female_employee1 as
select * from company_data
where e_gender = 'Female';

select * from female_employee1;

select * from company_data;
insert into company_data values(3,'Anne', 125000, 25, 'Female', 'Analytics')
insert into company_data values(4,'Julia',73000,30, 'Female','Analytics')

create view females as
select * from company_data
where e_gender = 'Female';

select * from company_data;
select * from females;
drop view females;
select * from females;

alter table company_data
add e_dob date;

alter table company_data
drop column e_dob;

select * from company_data;
select * from company_data order by e_id;
