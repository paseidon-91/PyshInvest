package pysh.investing.appserver.model;

import lombok.Data;

@Data
public class TransactionType {
/*
    create table investing.transaction_type ( id serial primary key,
    name varchar(254),
    comment varchar(254) );
*/

    private Long id;
    private String name;
    private String comment;
}
