create table if not exists Location (
  location_id serial primary key,
  location varchar(50),
  state_id int references state(state_id)
);

insert into Location (
  location, state_id
)
select distinct(proj_stg.location), State.state_id
from proj_stg
inner join State
on proj_stg.state = State.state_name

