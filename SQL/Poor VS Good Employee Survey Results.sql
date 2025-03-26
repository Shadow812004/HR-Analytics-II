Select main.employeeid as "Emp_ID",
	age as "Age",
	department as "Department",
	joblevel as "Job_Level",
	marital_status as "Marital_Status",
	monthly_income as "Monthly_Income",
	training_times_lastyear as "Training_Times_Last_Year",
	years_at_company as "Year_At_Company",
	years_since_lastpromotion as "Year_Since_Last_Promotion",
	environment_satisfaction as "Env_Satisfaction",
	job_satisfaction as "Job_Satisfaction",
	work_life_balance as "Work_Life_Balance",
	count(main.employeeid) over (partition by job_satisfaction)
	from general_data as main
inner join emp_survey as emp
on main.employeeid = emp.employeeid
where years_at_company >= 4 and 
	(
	(environment_satisfaction = 'Low' and job_satisfaction = 'Low' and work_life_balance = 'Bad')
	or
	(environment_satisfaction = 'Very High' and job_satisfaction = 'Very High' and work_life_balance = 'Best')
	)
order by environment_satisfaction, main.employeeid