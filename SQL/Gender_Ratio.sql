select gender as "Gender",
count(employeeid) as "Total_Count",
round(count(employeeid)*100/(select count(*) from general_data where department = 'Human Resources' ),2) as Ratio
from general_data
where department = 'Human Resources'
group by gender 

select gender as "Gender",
count(employeeid) as "Total_Count",
round(count(employeeid)*100/(select count(*) from general_data where department = 'Research & Development' ),2) as Ratio
from general_data
where department = 'Research & Development'
group by gender 

select gender as "Gender",
count(employeeid) as "Total_Count",
round(count(employeeid)*100/(select count(*) from general_data where department = 'Sales' ),2) as Ratio
from general_data
where department = 'Sales'
group by gender 
