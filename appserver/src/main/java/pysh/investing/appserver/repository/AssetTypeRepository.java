package pysh.investing.appserver.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pysh.investing.appserver.model.AssetType;

public interface AssetTypeRepository extends JpaRepository<AssetType, Long> {

}
