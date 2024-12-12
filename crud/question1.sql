select distinct
  Employee.*, Job.job_title, Department.department_name
from EmployeeInfo
join Employee
on EmployeeInfo.emp_id = Employee.emp_id
join Department
on EmployeeInfo.department_id = Department.department_id
join Job
on EmployeeInfo.job_id = Job.job_id

