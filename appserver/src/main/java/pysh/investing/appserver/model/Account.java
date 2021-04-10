package pysh.investing.appserver.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Set;

/**
 * Сущность "Счет"
 * В портвеле пользователя может быть несколько счетов разной валюты (или одинаковой)
 */
@Data
@NoArgsConstructor
@Entity
@Table(name = "account", schema = "investing")
public class Account {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    /**
     * Портфель, которому пренадлежит счет
     */
    @ManyToOne
    @JoinColumn(name = "portfolio_id")
    private Portfolio portfolio;

    /**
     * Валюта счета
     */
    @ManyToOne
    @JoinColumn(name = "currency_id")
    private Currency currency;

    /**
     * Текущий баланс
     */
    @Column(name = "account_balance")
    private BigDecimal balance;

    @OneToMany
    @JoinColumn(name = "account_id")
    private Set<Transaction> transactionSet;
}
