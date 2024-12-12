create table if not exists Education (
  education_id serial primary key,
  education_level varchar(50)
);

insert into Education (
  education_level
)
select distinct(education_lvl)
from proj_stg

