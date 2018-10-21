package cl.zero23ku.guildRecruitment.Controllers;


import cl.zero23ku.guildRecruitment.Services.BlizzardService;
import org.json.JSONObject;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApplyController {

    BlizzardService blizzardService;

    ApplyController(BlizzardService blizzardService){
        this.blizzardService = blizzardService;
    }

    @PostMapping("/sendApply")
    public String checkApply(@RequestBody String name){
        String result;
        try{
            result = blizzardService.getCharacter(name);
            return new JSONObject(result).toString();
        }catch (Exception e){
            return new JSONObject("{\"msg\":\"personaje no encontrado\"}").toString();
        }
    }

}
