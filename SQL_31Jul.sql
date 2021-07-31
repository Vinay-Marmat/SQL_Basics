use day5;

select * from company_data;

select * from Department;

select company_data.e_dept, company_data.e_name, Department.d_name, Department.d_location 
from company_data inner join Department on company_data.e_dept = Department.d_name;

select company_data.e_name, company_data.e_dept, Department.d_name, Department.d_location
from company_data left join Department on company_data.e_dept = Department.d_name
union
select company_data.e_name, company_data.e_dept, Department.d_name, Department.d_location
from company_data right join Department on company_data.e_dept = Department.d_name;

select company_data.e_name, company_data.e_dept, Department.d_name, Department.d_location
from company_data full join Department on company_data.e_dept = Department.d_name;

set SQL_SAFE_UPDATES =0;

update company_data set e_age=10 
from company_data JOIN Department 
on company_data.e_dept = Department.d_name
where d_location = 'New York';


delete company_data from company_data
join Department on company_data.e_dept = Department.d_name
where d_location = 'New York';

select * from company_data;

select * from Department;

