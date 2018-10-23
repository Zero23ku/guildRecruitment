package cl.zero23ku.guildRecruitment.Controllers;


import cl.zero23ku.guildRecruitment.Services.BlizzardService;
import cl.zero23ku.guildRecruitment.Services.MailSenderService;
import cl.zero23ku.guildRecruitment.domain.Mail;
import org.json.JSONObject;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApplyController {

    BlizzardService blizzardService;
    MailSenderService mailSenderService;

    ApplyController(BlizzardService blizzardService, MailSenderService mailSenderService){

        this.blizzardService = blizzardService;
        this.mailSenderService = mailSenderService;
    }

    @PostMapping("/sendApply")
    public String checkApply(@RequestBody String name){
        String result;
        try{
            result = blizzardService.getCharacter(name);
            Mail mail = new Mail();
            mail.setTo("marcelo.cardenas@usach.cl");
            mail.setFrom("honor.preservation@gmail.com");
            mail.setSubject("Esto es una prueba");
            mail.setContent(result);
            mailSenderService.sendSimple(mail);
            return new JSONObject(result).toString();
        }catch (Exception e){
            return new JSONObject("{\"msg\":\"personaje no encontrado\"}").toString();
        }
    }

}
