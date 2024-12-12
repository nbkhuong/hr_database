select Department.department_name, count(Employee.emp_name)
from employeeinfo
join employee
on employeeinfo.emp_id = employee.emp_id
join department
on employeeinfo.department_id = department.department_id
group by department.department_name


