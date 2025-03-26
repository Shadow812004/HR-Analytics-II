select Department as "Department" , joblevel as "Job_Level",
round(Avg(monthly_income),2) as  "Avg_monthly_income" 
from general_data
group by department, joblevel
order by  department, joblevel