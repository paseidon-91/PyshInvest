package pysh.investing.appserver.model;

import lombok.Data;

@Data
public class AssetType {

/*
    create table investing.asset_type ( id serial primary key,
    name varchar(254),
    parent_id int8 references investing.asset_type (id) ,
    comment varchar(254) );
*/

    private Long id;
    private String name;
    private AssetType assetType;
    private String comment;
}
