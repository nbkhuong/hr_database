create table if not exists Employee(
  emp_id varchar(15) primary key,
  emp_name varchar(50),
  emp_email varchar(50),
  emp_hiredate date
);

insert into Employee (
  emp_id, emp_name, emp_email, emp_hiredate
)
select distinct emp_id, emp_nm, email, hire_dt
from proj_stg

