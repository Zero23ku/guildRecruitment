package cl.zero23ku.guildRecruitment.Services;

import cl.zero23ku.guildRecruitment.Constants.ApplicationConstants;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;


@Service
public class BlizzardService {

    RestTemplate restTemplate;

    BlizzardService(RestTemplate restTemplate){
        this.restTemplate = restTemplate;
    }


    public String getGuildInformation(){
        return restTemplate.getForObject(
                ApplicationConstants.API_BLIZZARD_URL + ApplicationConstants.BLIZZARD_GUILD + ApplicationConstants.REALM_NAME + "/" +
                        "{guildName}?" + ApplicationConstants.BLIZZARD_LOCALE + "{locale}&" + ApplicationConstants.BLIZZARD_APIKEY + "{apikey}",
                String.class,
                ApplicationConstants.GUILD_NAME, ApplicationConstants.LANGUAGE, ApplicationConstants.API_BLIZZARD_PUBLIC_KEY
        );
    }

    public String getGuildProgression() throws IOException {

        HttpClient client = HttpClientBuilder.create().build();
        HttpGet request = new HttpGet(ApplicationConstants.API_RAIDERIO_URL + ApplicationConstants.RAIDERIO_GUILDS + "/" +
                ApplicationConstants.RAIDERIO_PROFILE + "?" + ApplicationConstants.RAIDERIO_REGION + ApplicationConstants.REGION_US +
                "&" + ApplicationConstants.RAIDERIO_REALM + ApplicationConstants.REALM_NAME + "&" + ApplicationConstants.RAIDERIO_NAME +
                ApplicationConstants.GUILD_NAME_NO_SPACE + "&" + ApplicationConstants.RAIDERIO_FIELDS + ApplicationConstants.RAIDERIO_RANKINGS + "%2C" +
                ApplicationConstants.RAIDERIO_PROGRESSION);
        HttpResponse response = client.execute(request);
        return EntityUtils.toString(response.getEntity());
    }

    public String getGuildMembers(){
        return restTemplate.getForObject(
                ApplicationConstants.API_BLIZZARD_URL + ApplicationConstants.BLIZZARD_GUILD + ApplicationConstants.REALM_NAME + "/" +
                "{guildName}" + "?" + ApplicationConstants.RAIDERIO_FIELDS + "{members}&" + ApplicationConstants.BLIZZARD_LOCALE + "{locale}&" +
                ApplicationConstants.BLIZZARD_APIKEY + "{apiKey}",
                String.class,
                ApplicationConstants.GUILD_NAME, ApplicationConstants.MEMBERS, ApplicationConstants.LANGUAGE, ApplicationConstants.API_BLIZZARD_PUBLIC_KEY
        );
    }

    public String getRaces(){
        return restTemplate.getForObject(
                ApplicationConstants.API_BLIZZARD_URL + ApplicationConstants.BLIZZARD_DATA + ApplicationConstants.BLIZZARD_CHARACTER +
                        ApplicationConstants.RACES + "?" + ApplicationConstants.BLIZZARD_LOCALE + "{locale}&" + ApplicationConstants.BLIZZARD_APIKEY +
                        "{apiKey}",
                String.class,
                ApplicationConstants.LANGUAGE, ApplicationConstants.API_BLIZZARD_PUBLIC_KEY
        );
    }

    public String getClasses(){
        return restTemplate.getForObject(
                ApplicationConstants.API_BLIZZARD_URL + ApplicationConstants.BLIZZARD_DATA + ApplicationConstants.BLIZZARD_CHARACTER +
                        ApplicationConstants.CLASSES + "?" + ApplicationConstants.BLIZZARD_LOCALE + "{locale}&" + ApplicationConstants.BLIZZARD_APIKEY +
                        "{apiKey}",
                String.class,
                ApplicationConstants.LANGUAGE, ApplicationConstants.API_BLIZZARD_PUBLIC_KEY
        );
    }

}
