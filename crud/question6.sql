select 
  Employee.emp_name, 
  Job.job_title,
  Department.department_name,
  Manager.manager_name,
  Employeeinfo.start_date,
  Employeeinfo.end_date
from Employeeinfo
join Employee
on Employeeinfo.emp_id = Employee.emp_id
join Job
on Employeeinfo.job_id = Job.job_id
join Department
on Employeeinfo.department_id = Department.department_id
join Manager
on Employeeinfo.manager_id = Manager.manager_id
where Employee.emp_name = 'Toni Lembeck'
order by start_date

