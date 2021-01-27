create table investing.asset_balance ( id serial primary key,
asset_id int8 references investing.asset (id),
current_quantity int8 );
