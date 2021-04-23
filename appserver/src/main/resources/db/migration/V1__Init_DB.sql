create table investing.account
(
    id              int8 not null,
    account_balance numeric(19, 2),
    currency_id     int8,
    portfolio_id    int8,
    primary key (id)
);
create table investing.asset
(
    id          int8 not null,
    isin        varchar(255),
    name        varchar(255),
    type_id     int8,
    currency_id int8,
    fund_id     int8,
    sector_id   int8,
    primary key (id)
);
create table investing.asset_balance
(
    id               int8 not null,
    current_quantity int8,
    asset_id         int8,
    primary key (id)
);
create table investing.asset_type
(
    id        int8 not null,
    comment   varchar(255),
    name      varchar(255),
    parent_id int8,
    primary key (id)
);
create table investing.currency_register
(
    id          int8 not null,
    designation varchar(255),
    name        varchar(255),
    primary key (id)
);
create table investing.management_type
(
    id   int8 not null,
    name varchar(255),
    primary key (id)
);
create table investing.portfolio
(
    id      int8 not null,
    user_id int8,
    primary key (id)
);
create table investing.sector
(
    id                         int8 not null,
    business_cycle_sensitivity boolean,
    name                       varchar(255),
    sector_level               varchar(255),
    parent_id                  int8,
    primary key (id)
);
create table investing.transaction
(
    id                  int8 not null,
    comment             varchar(255),
    price               numeric(19, 2),
    quantity            int8,
    transaction_date    timestamp,
    account_id          int8,
    asset_id            int8,
    transaction_type_id int8,
    primary key (id)
);
create table investing.transaction_type
(
    id      int8 not null,
    comment varchar(255),
    name    varchar(255),
    primary key (id)
);
create table investing.user
(
    id       int8 not null,
    active   boolean,
    email    varchar(255),
    password varchar(255),
    username varchar(255),
    primary key (id)
);
create sequence hibernate_sequence start 10001 increment 1;
alter table if exists investing.account add constraint account_currency_register_fk foreign key (currency_id) references investing.currency_register;
alter table if exists investing.account add constraint account_portfolio_fk foreign key (portfolio_id) references investing.portfolio;
alter table if exists investing.asset add constraint asset_asset_type_fk foreign key (type_id) references investing.asset_type;
alter table if exists investing.asset add constraint asset_currency_register_fk foreign key (currency_id) references investing.currency_register;
alter table if exists investing.asset add constraint asset_management_type_fk foreign key (fund_id) references investing.management_type;
alter table if exists investing.asset add constraint asset_sector_fk foreign key (sector_id) references investing.sector;
alter table if exists investing.asset_balance add constraint asset_balance_asset_fk foreign key (asset_id) references investing.asset;
alter table if exists investing.asset_type add constraint asset_type_asset_type_fk foreign key (parent_id) references investing.asset_type;
alter table if exists investing.portfolio add constraint portfolio_user_fk foreign key (user_id) references investing.user;
alter table if exists investing.transaction add constraint transaction_account_fk foreign key (account_id) references investing.account;
alter table if exists investing.transaction add constraint transaction_asset_fk foreign key (asset_id) references investing.asset;
alter table if exists investing.transaction add constraint transaction_transaction_type_fk foreign key (transaction_type_id) references investing.transaction_type;
