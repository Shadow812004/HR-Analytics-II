
with job_status as (Select *,
	Case
	When avg_working <= 1.5 then 'Job Hopper'
	else 'Company Veteran'
	end as Job_Status
from (Select employeeid,round((total_working_years/num_companies_worked),1) as avg_working  
from general_data
where num_companies_worked != 0 
	and num_companies_worked != 1
	and total_working_years >= 3))

select job_status as "Emp_nature", count(employeeid) as Num_Employees,
	count(employeeid)*100/2242 as "Approx_Ratio(in %)"
	from job_status
group by job_status


