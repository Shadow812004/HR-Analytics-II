/*List of Employee Having Low Job Satisfaction
Prime Reason Wide Gap Between Promotions */


With env_data as (Select main.employeeid,job_satisfaction, department,
	business_travel, distance_from_home, joblevel, jobrole,
	 monthly_income, gender, percent_salary_hike,
	stockoption_level, years_since_lastpromotion, years_at_company
	 from general_data as main
join emp_survey as emp
on main.employeeid = emp.employeeid )

Select employeeid as "EmployeeID",
	department as "Department",
	jobrole as "Job_Role",
	years_since_lastpromotion as "Years_Since_Last_Promotion",
	years_at_company as "Years_At_Company"
	from env_data 
	where job_satisfaction = 'Low'
and years_at_company >= 4 and years_since_lastpromotion > 3