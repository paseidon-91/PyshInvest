package pysh.investing.appserver.model;

import lombok.Data;

@Data
public class Sector {
/*
    create table investing.sector ( id serial primary key,
    name varchar(254),
    business_cycle_sensitivity boolean );
*/

    private Long id;
    private String name;
    private Boolean businessCycleSensitivity;
}
