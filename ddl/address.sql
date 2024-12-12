create table if not exists Address (
  address_id serial primary key,
  address varchar(50),
  city_name varchar(50),
  location_id int references Location(location_id)
);

insert into Address (
  address, city_name, location_id
)
select distinct proj_stg.address, proj_stg.city, Location.location_id
from proj_stg
inner join Location
on proj_stg.location = Location.location

