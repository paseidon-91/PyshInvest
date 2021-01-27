create table investing.transaction ( id serial primary key,
asset_id int8 references investing.asset (id),
account_id int8 references investing.account (id),
transaction_type_id int8 references investing.transaction_type (id),
transaction_date date,
quantity int8,
price money,
comment varchar(254) );