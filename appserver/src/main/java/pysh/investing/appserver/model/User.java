package pysh.investing.appserver.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonView;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Fetch;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Set;

/**
 * Пользователь,
 * он же владелец портфеля,
 * он же аккаунт пользователя
 */
@NoArgsConstructor
@Entity
@Getter
@Setter
@Table(name = "user", schema = "investing")
public class User implements Serializable {
    @Id
    @JsonView(Views.IdName.class)
    private String id;

    @JsonView(Views.IdName.class)
    @Column(name = "username")
    private String name;

    @Column(name = "password")
    private String password;

    @Column(name = "email")
    private String email;

    @Column(name = "active")
    private Boolean active;

    @JsonView(Views.IdName.class)
    @Column(name = "userpic")
    private String userpic;

    @Column(name = "gender")
    private String gender;

    @Column(name = "locale")
    private String locale;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
    @Column(name = "lastVisit")
    private LocalDateTime lastVisit;

    // TODO вернуть на ленивую подгрузку, но у thymeleaf могут возникнуть проблемы с этим
    @OneToMany(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private Set<Portfolio> portfolioSet;
}
