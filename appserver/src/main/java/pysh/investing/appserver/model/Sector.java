package pysh.investing.appserver.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Type;

import javax.persistence.*;

/**
 * Сектор экономики
 * Глобальный_стандарт_классификации_отраслей
 */
@Data
@NoArgsConstructor
@Entity
@Table(name = "sector", schema = "investing")
public class Sector {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "name")
    private String name;

    /**
     * Цикличность сектора
     */
    @Column(name = "business_cycle_sensitivity")
    private Boolean cycled;

    /**
     * Родительский сектор
     */
    @OneToOne
    @JoinColumn(name = "parent_id")
    private Sector parentSector;

    /**
     * Уровень иерархии сектора
     */
    @Column(name = "sector_level")
    @Enumerated(EnumType.STRING)
    private SectorLevel sectorLevel;

//    @OneToMany
//    @JoinColumn(name = "id")
//    private Set<Asset> assetSet;
}
