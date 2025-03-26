With age_data as 
(select * , 
	Case
	When age <= 25 Then 'Youth (18-25 Yrs)'
	When age <= 35 then 'Young Adult (26-35 Yrs)'
	When age <= 45 then 'Mid-Aged Adult (36-45 Yrs)'
	When age <= 58 then 'Senior Adult (46-58 Yrs)'
	Else 'Senior Citizen (59+ Yrs)'
	End as age_Group
	from general_data)

/*Age group and employee count categorised on the basis of Department>Job_Level>Gender*/

	Select Department as "Department",
		joblevel as "Job_Level",
		gender as "Gender",
		age_group as "Age_Group",
		count(employeeid) as Num_Emp
		from age_data 
		group by department, joblevel, gender, age_group
		order by department, joblevel, gender, age_group