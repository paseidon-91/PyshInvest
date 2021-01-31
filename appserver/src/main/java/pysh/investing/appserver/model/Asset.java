package pysh.investing.appserver.model;

import lombok.Data;

@Data
public class Asset {
/*
    create table investing.asset ( id serial primary key,
    name varchar(254),
    isin varchar(64),
    type_id int8 REFERENCES investing.asset_type (id),
    currency_id int8 references investing.currency_register (id),
    fund_id int8 references investing.management_type (id),
    sector_id int8 references investing.sector(id));
*/

    private Long id;
    private String name;
    private String isin;
    private AssetType assetType;
    private Currency currency;
    private ManagementType managementType;
    private Sector sector;
}
