package pysh.investing.appserver.model;

import lombok.Data;

@Data
public class User {
/*
    create table investing.user ( id serial primary key,
    username varchar(254),
    password varchar(254),
    email varchar(254),
    active boolean );
*/

    private Long id;
    private String username;
    private String password;
    private String email;
    private Boolean active;
}
