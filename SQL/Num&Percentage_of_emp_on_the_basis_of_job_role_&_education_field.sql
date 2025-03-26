with my_data as (Select joblevel as "Job_Level",
	jobrole as "Job_Role", 
	education_field as "Education_Field",
	count(employeeid) as Num_of_Employee
from general_data
group by joblevel,jobrole, education_field
order by joblevel,jobrole, education_field)
	
Select *,
	round(num_of_employee*100/sum(num_of_employee) over (Partition by "Job_Level" rows between unbounded preceding and unbounded following),2) as "Percent"
	from my_data	

