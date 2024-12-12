create table if not exists EmployeeInfo (
  emp_id varchar(15) references Employee(emp_id),
  department_id int references Department(department_id),
  salary_id int references Salary(salary_id),
  education_id int references Education(education_id),
  job_id int references Job(job_id),
  manager_id int references Manager(manager_id),
  address_id int references Address(address_id),
  start_date date,
  end_date date
);

insert into EmployeeInfo (
  emp_id,
  department_id,
  salary_id,
  education_id,
  job_id,
  manager_id,
  address_id,
  start_date,
  end_date
)
select distinct
  Employee.emp_id,
  Department.department_id,
  Salary.salary_id,
  Education.education_id,
  Job.job_id,
  Manager.manager_id,
  Address.address_id,
  proj_stg.start_dt,
  proj_stg.end_dt
from proj_stg
inner join Employee
on proj_stg.emp_id = Employee.emp_id
inner join Department
on proj_stg.department_nm = Department.department_name
inner join Salary
on proj_stg.salary = Salary.salary
inner join Education
on proj_stg.education_lvl = Education.education_level
inner join Job
on proj_stg.job_title = Job.job_title
inner join Manager
on proj_stg.manager = Manager.manager_name
inner join Address
on proj_stg.city = Address.city_name
inner join Location
on proj_stg.location = Location.location
inner join State
on proj_stg.state = State.state_name

