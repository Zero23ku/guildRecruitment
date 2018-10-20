package cl.zero23ku.guildRecruitment.Controllers;

import cl.zero23ku.guildRecruitment.Services.BlizzardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;


@Controller
public class PageController {

    BlizzardService blizzardService;

    PageController(BlizzardService blizzardService){
        this.blizzardService = blizzardService;
    }


    @RequestMapping("/")
    public String mainPage(Model model) throws IOException {
        model.addAttribute("test","ayyyy lmao");
        String testGuild = blizzardService.getGuildInformation();
        String testGuild2 = blizzardService.getGuildProgression();
        model.addAttribute("guildProgression",testGuild2);
        model.addAttribute("guildInfo",testGuild);

        return "test";
    }


}
