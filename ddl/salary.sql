create table if not exists Salary (
  salary_id serial primary key,
  salary bigint
);

insert into Salary (
  salary
)
select distinct(salary)
from proj_stg

