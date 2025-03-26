/*Human Resources*/

Select business_travel as "Business_Travel" , count(employeeid) as "No._of_Employees",
round(count(employeeid)*100/(Select count(employeeid) from general_data where department = 'Human Resources'),2) as "Ratio (approx.)" 
from  general_data as a
where department = 'Human Resources'
group by business_travel

	
/*Research & Development*/

Select business_travel as "Business_Travel" , count(employeeid) as "No._of_Employees",
round(count(employeeid)*100/(Select count(employeeid) from general_data where department = 'Research & Development'),2) as "Ratio (approx.)" 
from  general_data as a
where department = 'Research & Development'
group by business_travel


/*Sales*/

Select business_travel as "Business_Travel" , count(employeeid) as "No._of_Employees",
round(count(employeeid)*100/(Select count(employeeid) from general_data where department = 'Sales'),2) as "Ratio (approx.)" 
from  general_data as a
where department = 'Sales'
group by business_travel
