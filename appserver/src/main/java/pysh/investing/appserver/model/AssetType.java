package pysh.investing.appserver.model;

import com.fasterxml.jackson.annotation.JsonView;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * Тип ценной бумаги
 * Может использоваться непосредственно для определения типа ценной бумаги
 * или для объединения других типов ЦБ в общую категорию
 */
@Data
@NoArgsConstructor
@Entity
@Table(name = "asset_type", schema = "investing")
public class AssetType {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @JsonView(Views.IdName.class)
    private Long id;

    @Column(name = "name")
    @JsonView(Views.IdName.class)
    private String name;

    /**
     * Категория типа, обобщение
     */
    @OneToOne
    @JoinColumn(name = "parent_id")
    private AssetType parentAssetType;

    @Column(name = "comment")
    @JsonView(Views.FullMessage.class)
    private String comment;

//    @OneToMany
//    @JoinColumn(name = "id")
//    private Set<Asset> assetSet;
}
