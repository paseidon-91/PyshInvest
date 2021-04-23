package pysh.investing.appserver.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pysh.investing.appserver.model.AssetType;
import pysh.investing.appserver.repository.AssetTypeRepository;

import java.util.List;

@Service
public class AssetTypeService {

    private final AssetTypeRepository assetTypeRepository;

    @Autowired
    public AssetTypeService(AssetTypeRepository assetTypeRepository) {
        this.assetTypeRepository = assetTypeRepository;
    }

    public List<AssetType> findAll() {
        return this.assetTypeRepository.findAll();
    }
}
