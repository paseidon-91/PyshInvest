package pysh.investing.appserver.model;

import lombok.Data;

@Data
public class ManagementType {
/*
    create table investing.management_type ( id serial primary key,
    name varchar(254) );
*/

    private Long id;
    private String name;
}
