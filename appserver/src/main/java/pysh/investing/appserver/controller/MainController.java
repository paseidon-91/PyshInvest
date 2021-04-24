package pysh.investing.appserver.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pysh.investing.appserver.model.User;
import pysh.investing.appserver.model.Views;
import pysh.investing.appserver.repository.AssetTypeRepository;

import java.util.HashMap;

@Controller
@RequestMapping("/")
public class MainController {
    private final AssetTypeRepository assetTypeRepository;

    @Value("${spring.profiles.active}")
    private String profile;
    private final ObjectWriter writer;

    @Autowired
    public MainController(AssetTypeRepository assetTypeRepository, ObjectMapper mapper) {
        this.assetTypeRepository = assetTypeRepository;
        writer = mapper
                .setConfig(mapper.getSerializationConfig())
                .writerWithView(Views.FullMessage.class);
    }

    @GetMapping
    public String main(
            Model model,
            @AuthenticationPrincipal User user) throws JsonProcessingException {
        HashMap<Object, Object> data = new HashMap<>();

        if (user != null) {
            data.put("profile", user);

            String messages = writer.writeValueAsString(assetTypeRepository.findAll());
//            model.addAttribute("messages", messages);
            model.addAttribute("messages", "[]");
        } else {
            model.addAttribute("messages", "[]");
        }

        model.addAttribute("frontendData", data);
        model.addAttribute("isDevMode", "dev".equals(profile));
        return "index";
    }

}
