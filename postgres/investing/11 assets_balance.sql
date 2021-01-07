create table investing.assets_balance ( id serial primary key,
asset_id int8 references investing.assets (id),
current_quantity int8 );
