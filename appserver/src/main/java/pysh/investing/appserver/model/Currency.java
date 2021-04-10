package pysh.investing.appserver.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * Валюта
 */
@Data
@NoArgsConstructor
@Entity
@Table(name = "currency_register", schema = "investing")
public class Currency {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "name")
    private String name;

    /**
     * Обозначение
     */
    @Column(name = "designation")
    private String designation;

//    @OneToMany
//    @JoinColumn(name = "id")
//    private Set<Account> accountSet;
}
