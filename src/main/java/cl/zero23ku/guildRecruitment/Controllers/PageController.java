package cl.zero23ku.guildRecruitment.Controllers;

import cl.zero23ku.guildRecruitment.Config.PropertiesConfig;
import cl.zero23ku.guildRecruitment.Services.BlizzardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;


@Controller
public class PageController {

    BlizzardService blizzardService;
    PropertiesConfig propertiesConfig;

    PageController(BlizzardService blizzardService, PropertiesConfig propertiesConfig){
        this.blizzardService = blizzardService;
        this.propertiesConfig = propertiesConfig;
    }


    @RequestMapping("/")
    public String mainPage(Model model) throws IOException {
        //model.addAttribute("test","ayyyy lmao");
        System.out.print(propertiesConfig.getApi());
        String guildInfo = blizzardService.getGuildInformation();
        String guildProgression = blizzardService.getGuildProgression();
        String guildMembers = blizzardService.getGuildMembers();
        String races = blizzardService.getRaces();
        String classes = blizzardService.getClasses();
        model.addAttribute("guildInfo",guildInfo);
        model.addAttribute("guildProgression",guildProgression);
        model.addAttribute("guildMemmbers",guildMembers);
        model.addAttribute("classes",classes);
        model.addAttribute("races",races);

        return "test";
    }


}
