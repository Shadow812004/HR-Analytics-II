/*Most Unsatisfied Employee On The Basis Of Employee_Survey_Data*/

With env_data as (Select main.employeeid, job_satisfaction, 
	environment_satisfaction, work_life_balance,  department,
	business_travel, distance_from_home, joblevel, jobrole,
	 monthly_income, gender, percent_salary_hike,
	stockoption_level, years_since_lastpromotion, years_at_company
	 from general_data as main
join emp_survey as emp
on main.employeeid = emp.employeeid )

Select *
	from env_data 
	where job_satisfaction = 'Low' and environment_satisfaction = 'Low' and work_life_balance = 'Bad'
and years_at_company >= 4 and years_since_lastpromotion > 3