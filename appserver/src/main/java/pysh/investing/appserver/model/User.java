package pysh.investing.appserver.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;

/**
 * Пользователь,
 * он же владелец портфеля,
 * он же аккаунт пользователя
 */
@Data
@NoArgsConstructor
@Entity
@Table(name = "user", schema = "investing")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "username")
    private String username;

    @Column(name = "password")
    private String password;

    @Column(name = "email")
    private String email;

    @Column(name = "active")
    private Boolean active;

    @OneToMany
    @JoinColumn(name = "user_id")
    private Set<Portfolio> portfolioSet;
}
