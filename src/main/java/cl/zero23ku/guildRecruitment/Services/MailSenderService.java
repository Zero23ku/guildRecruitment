package cl.zero23ku.guildRecruitment.Services;


import cl.zero23ku.guildRecruitment.domain.Mail;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailSenderService {

    private JavaMailSender mailSender;

    MailSenderService(JavaMailSender mailSender){
        this.mailSender = mailSender;
    }

    public void sendSimple(final Mail mail){
        SimpleMailMessage message = new SimpleMailMessage();
        message.setSubject(mail.getSubject());
        message.setText(mail.getContent());
        message.setTo(mail.getTo());
        message.setFrom(mail.getFrom());
        mailSender.send(message);
    }

}
