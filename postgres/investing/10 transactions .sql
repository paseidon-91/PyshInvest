create table investing.transactions ( id serial primary key,
asset_id int8 references investing.assets (id),
account_id int8 references investing.account (id),
transaction_type_id int8 references investing.transations_type (id),
transaction_date date,
quantity int8,
price money,
comments varchar(255) );