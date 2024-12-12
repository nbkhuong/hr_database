create table if not exists State (
  state_id serial primary key,
  state_name varchar(50)
);

insert into State (
  state_name
)
select distinct(state)
from proj_stg

