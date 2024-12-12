create table if not exists Manager (
  manager_id serial primary key,
  manager_name varchar(50)
);

insert into Manager (
  manager_name
)
select distinct manager
from proj_stg

