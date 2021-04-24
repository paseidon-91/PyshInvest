package pysh.investing.appserver.controller;

import com.fasterxml.jackson.annotation.JsonView;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import pysh.investing.appserver.dto.EventType;
import pysh.investing.appserver.dto.ObjectType;
import pysh.investing.appserver.model.AssetType;
import pysh.investing.appserver.model.User;
import pysh.investing.appserver.model.Views;
import pysh.investing.appserver.repository.AssetTypeRepository;
import pysh.investing.appserver.util.WsSender;

import java.io.IOException;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.regex.Pattern;

@RestController
@RequestMapping("assettype")
public class AssetTypeController {
    private static final String URL_PATTERN = "https?:\\/\\/?[\\w\\d\\._\\-%\\/\\?=&#]+";
    private static final String IMAGE_PATTERN = "\\.(jpeg|jpg|gif|png)$";
    private static final Pattern URL_REGEXP = Pattern.compile(URL_PATTERN, Pattern.CASE_INSENSITIVE);
    private static final Pattern IMG_REGEXP = Pattern.compile(IMAGE_PATTERN, Pattern.CASE_INSENSITIVE);



    private final AssetTypeRepository assetTypeRepository;
    private final BiConsumer<EventType, AssetType> wsSender;

    @Autowired
    public AssetTypeController(AssetTypeRepository assetTypeRepository, WsSender wsSender) {
        this.assetTypeRepository = assetTypeRepository;
        this.wsSender = wsSender.getSender(ObjectType.ASSET_TYPE, Views.IdName.class);
    }

    @GetMapping
    @JsonView(Views.IdName.class)
    public List<AssetType> list() {
        return assetTypeRepository.findAll();
    }

    @GetMapping("/{id}")
    @JsonView(Views.FullMessage.class)
    public AssetType getSingleMessage(
            @PathVariable("id") AssetType assetType
    ) {
        return assetType;
    }

    @PostMapping
    public AssetType create(
            @RequestBody AssetType assetType,
            @AuthenticationPrincipal User user
    ) throws IOException {
//        assetType.setCreationDate(LocalDateTime.now());
        AssetType updatedAssetType = assetTypeRepository.save(assetType);
//        fillMeta(assetType);
//        assetType.setAuthor(user);
        wsSender.accept(EventType.CREATE, updatedAssetType);

        return updatedAssetType;
    }

    @PutMapping("/{id}")
    public AssetType update(
            @PathVariable("id") AssetType assetTypeFromDb,
            @RequestBody AssetType assetType
    ) throws IOException {
        BeanUtils.copyProperties(assetType, assetTypeFromDb, "id");
//        fillMeta(messageFromDb);

        AssetType updatedAssetType = assetTypeRepository.save(assetTypeFromDb);

        wsSender.accept(EventType.UPDATE, updatedAssetType);

        return updatedAssetType;
    }

    @DeleteMapping("/{id}")
    public void delete(
            @PathVariable("id") AssetType assetType
    ) {
        assetTypeRepository.delete(assetType);
        wsSender.accept(EventType.REMOVE, assetType);
    }
//
//    private void fillMeta(AssetType assetType) throws IOException {
//        String text = assetType.getText();
//
//        Matcher matcher = URL_REGEXP.matcher(text);
//        if (matcher.find()) {
//            String url = text.substring(matcher.start(), matcher.end());
//            assetType.setLink(url);
//
//            matcher = IMG_REGEXP.matcher(url);
//
//            if (matcher.find()) {
//                assetType.setLinkCover(url);
//            } else if (!url.contains("youtu")) {
//                MetaDto meta = getMeta(url);
//                assetType.setLinkCover(meta.getCover());
//                assetType.setLinkTitle(meta.getTitle());
//                assetType.setLinkDescription(meta.getDescription());
//            }
//
//        }
//    }

//    private MetaDto getMeta(String url) throws IOException {
//        Document doc = Jsoup.connect(url).get();
//        Elements title = doc.select("meta[name$=title],meta[property$=title]");
//        Elements description = doc.select("meta[name$=description],meta[property$=description]");
//        Elements cover = doc.select("meta[name$=image],meta[property$=image]");
//
//        return new MetaDto(
//                getContent(title.first()),
//                getContent(description.first()),
//                getContent(cover.first())
//        );
//    }
//
//    private String getContent(Element element) {
//        return element == null ? "" : element.attr("content");
//    }
}
