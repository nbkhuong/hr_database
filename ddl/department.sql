create table if not exists Department (
  department_id serial primary key,
  department_name varchar(50)
);

insert into Department (
  department_name
)
select distinct(department_nm)
from proj_stg

