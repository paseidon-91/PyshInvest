package pysh.investing.appserver.model;

import lombok.Data;

@Data
public class Portfolio {
/*
    create table investing.portfolio ( id serial primary key,
    user_id int8 references investing.user (id));
*/

    private Long id;
    private User user;
}
