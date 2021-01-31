package pysh.investing.appserver.model;

import lombok.Data;

@Data
public class Currency {
/*
    create table investing.currency_register ( id serial primary key,
    name varchar(254),
    designation varchar(64) );
*/

    private Long id;
    private String name;
    private String designation;
}
