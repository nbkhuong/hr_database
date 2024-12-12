create table if not exists Job (
  job_id serial primary key,
  job_title varchar(50)
);

insert into Job (
  job_title
)
select distinct job_title
from proj_stg

