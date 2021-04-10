package pysh.investing.appserver.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * Текущее состояние ценной бумаги, сколько их находится в портфеле
 * Актуализируется после выполнения транзакции
 * Служит как альтернатива подсчету результата "На лету" (собрать все транзакции покупки и вычесть проданные ЦБ)
 */
@Data
@NoArgsConstructor
@Entity
@Table(name = "asset_balance", schema = "investing")
public class AssetBalance {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "asset_id")
    private Asset asset;

    @Column(name = "current_quantity")
    private Long quantity;
}
