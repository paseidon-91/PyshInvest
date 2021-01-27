create table investing.portfolio ( id serial primary key,
user_id int8 references investing.user (id));

