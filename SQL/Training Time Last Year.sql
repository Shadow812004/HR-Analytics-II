/*Training Times Last Year*/

with tr_data as 
	(select department ,joblevel,
	Case
	when total_working_years <= 3 then 'Entry Level (0-3 Yrs.)'
	when total_working_years <= 8 then 'Intermediate Level (4-8 Yrs.)'
	When total_working_years <= 15 then 'Mid Level (9-15 Yrs.)'
	else 'Senior/Executive Level (15+Yrs.)'
	End as experience_level,
	training_times_lastyear
	from general_data)

Select  department as "Department",
	joblevel as "Job_Level",
	experience_level as "Experience Level" ,
	round(avg(training_times_lastyear),0) as "Average Training Time Last Year"
	from tr_data
group by department, joblevel, experience_level

