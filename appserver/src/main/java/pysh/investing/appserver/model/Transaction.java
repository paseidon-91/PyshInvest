package pysh.investing.appserver.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * Выполненная транзакция
 */
@Data
@NoArgsConstructor
@Entity
@Table(name = "transaction", schema = "investing")
public class Transaction {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    /**
     * Ценнаая бумага, над которой выполнена транзакция
     */
    @ManyToOne
    @JoinColumn(name = "asset_id")
    private Asset asset;

    /**
     * Счет списания/зачисления денежных средств при выполнении транзакции
     */
    @ManyToOne
    @JoinColumn(name = "account_id")
    private Account account;

    /**
     * Тип транзакции
     */
    @ManyToOne
    @JoinColumn(name = "transaction_type_id")
    private TransactionType transactionType;

    /**
     * Время выполнения транзакции
     */
    @Column(name = "transaction_date")
    private LocalDateTime transactionTime;

    /**
     * Объем транзакции
     */
    @Column(name = "quantity")
    private Long quantity;

    /**
     * Цена 1 единицы
     */
    @Column(name = "price")
    private BigDecimal price;

    @Column(name = "comment")
    private String comment;
}
