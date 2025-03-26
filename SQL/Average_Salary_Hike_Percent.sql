/*Percent Salary Hike*/


/* Average Percent Salary Hike Categorised By Deparment */
	
Select department as "Department",
	round(avg(percent_salary_hike),2) as "Avg_Salary_hike_percent"
	from general_data 
	group by department

/* Average Percent Salary Hike Categorised By Deparment Sub-Categorised By Job_Level*/

Select department as "Department",
	joblevel as "Job_Level",
	round(avg(percent_salary_hike),2) as "Avg_Salary_hike_percent"
	from general_data 
	group by department, joblevel
	order by department, joblevel

/* Average salary hike on the basis of experienced */

With Exp_Data as(Select * ,
	Case
	when total_working_years <= 3 then 'Entry Level (0-3 Yrs.)'
	when total_working_years <= 8 then 'Intermediate Level (4-8 Yrs.)'
	When total_working_years <= 15 then 'Mid Level (9-15 Yrs.)'
	else 'Senior/Executive Level (15+Yrs.)'
	End as experience_level
from general_data)

Select department as "Department",
	experience_level as "Experience Level",
	round(avg(percent_salary_hike),2) as "Avg_Salary_Hike(IN %)"
	from Exp_Data 
group by department, experience_level
order by department, experience_level


