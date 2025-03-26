/*Human Resources*/

Select attrition as "Attrition" , count(employeeid) as "No._of_Employees",
round(count(employeeid)*100/(Select count(employeeid) from general_data where department = 'Human Resources'),2) as "Ratio (approx.)" 
from  general_data as a
where department = 'Human Resources'
group by attrition

	
/*Research & Development*/

Select attrition as "Attrition" , count(employeeid) as "No._of_Employees",
round(count(employeeid)*100/(Select count(employeeid) from general_data where department = 'Research & Development'),2) as "Ratio (approx.)" 
from  general_data as a
where department = 'Research & Development'
group by attrition


/*Sales*/

Select attrition as "Attrition" , count(employeeid) as "No._of_Employees",
round(count(employeeid)*100/(Select count(employeeid) from general_data where department = 'Sales'),2) as "Ratio (approx.)" 
from  general_data as a
where department = 'Sales'
group by attrition