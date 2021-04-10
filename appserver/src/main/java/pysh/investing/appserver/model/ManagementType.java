package pysh.investing.appserver.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * Тип управления
 * Актуален не для всех ЦБ. В частности, ПИФы, ETFы
 */
@Data
@NoArgsConstructor
@Entity
@Table(name = "management_type", schema = "investing")
public class ManagementType {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "name")
    private String name;

//    @OneToMany
//    @JoinColumn(name = "id")
//    private Set<Asset> assetSet;
}
