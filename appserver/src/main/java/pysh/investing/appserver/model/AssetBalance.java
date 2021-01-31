package pysh.investing.appserver.model;

import lombok.Data;

@Data
public class AssetBalance {
/*
    create table investing.asset_balance ( id serial primary key,
    asset_id int8 references investing.asset (id),
    current_quantity int8 );
*/

    private Long id;
    private Asset asset;
    private Long quantity;
}
