package pysh.investing.appserver.model;

import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Data
public class Transaction {
/*
    create table investing.transaction ( id serial primary key,
    asset_id int8 references investing.asset (id),
    account_id int8 references investing.account (id),
    transaction_type_id int8 references investing.transaction_type (id),
    transaction_date date,
    quantity int8,
    price money,
    comment varchar(254) );
*/
    private Long id;
    private Asset asset;
    private Account account;
    private TransactionType transactionType;
    private LocalDateTime transactionTime;
    private Long quantity;
    private BigDecimal price;
    private String comment;
}
