package pysh.investing.appserver.model;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class Account {
/*
    create table investing.account ( id serial primary key,
    portfolio_id int8 references investing.portfolio (id) ,
    currency_id int8 references investing.currency_register (id),
    account_balance money );
*/

    private Long id;
    private Portfolio portfolio;
    private Currency currency;
    private BigDecimal balance;

}
