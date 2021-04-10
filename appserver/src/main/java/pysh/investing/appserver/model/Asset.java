package pysh.investing.appserver.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * Ценная бумага
 */
@Data
@NoArgsConstructor
@Entity
@Table(name = "asset", schema = "investing")
public class Asset {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "isin")
    private String isin;

    @ManyToOne
    @JoinColumn(name = "type_id")
    private AssetType assetType;

    @ManyToOne
    @JoinColumn(name = "currency_id")
    private Currency currency;

    @ManyToOne
    @JoinColumn(name = "fund_id")
    private ManagementType managementType;

    @ManyToOne
    @JoinColumn(name = "sector_id")
    private Sector sector;

//    @OneToMany
//    @JoinColumn(name = "id")
//    private Set<Transaction> transactionSet;
//    @OneToMany
//    @JoinColumn(name = "id")
//    private Set<AssetBalance> assetBalanceSet;
}
