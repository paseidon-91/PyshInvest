create table investing.account ( id serial primary key,
portfolio_id int8 references investing.portfolio (id) ,
currency_id int8 references investing.currency_register (id),
account_balance money );
