package pysh.investing.appserver.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;

/**
 * Портфель пользователя
 */
@Data
@NoArgsConstructor
@Entity
@Table(name = "portfolio", schema = "investing")
public class Portfolio {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    /**
     * Владелец портфеля
     */
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    /**
     * Список счетов в портфеле
     */
    @OneToMany
    @JoinColumn(name = "portfolio_id")
    private Set<Account> accountSet;
}
