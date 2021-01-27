create table investing.asset_type ( id serial primary key,
name varchar(254),
parent_id int8 references investing.asset_type (id) ,
comment varchar(254) );
