package pysh.investing.appserver.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * Тип транзакции
 */
@Data
@NoArgsConstructor
@Entity
@Table(name = "transaction_type", schema = "investing")
public class TransactionType {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "comment")
    private String comment;

//    @OneToMany
//    @JoinColumn(name = "id")
//    private Set<Transaction> transactionSet;
}
