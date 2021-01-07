create table investing.asset_types ( id serial primary key,
name varchar(255),
parent_id int8 references investing.asset_types (id) ,
comments varchar(255) );
