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
        /*HttpGet request = new HttpGet(ApplicationConstants.API_RAIDERIO_URL + ApplicationConstants.RAIDERIO_GUILDS + "/" +
                ApplicationConstants.RAIDERIO_PROFILE + "?" + ApplicationConstants.RAIDERIO_REGION + ApplicationConstants.REGION_US +
                "&" + ApplicationConstants.RAIDERIO_REALM + ApplicationConstants.REALM_NAME + "&" + ApplicationConstants.RAIDERIO_NAME +
                ApplicationConstants.GUILD_NAME + "&" + ApplicationConstants.RAIDERIO_FIELDS + ApplicationConstants.RAIDERIO_RANKINGS + "%2" +
                ApplicationConstants.RAIDERIO_PROGRESSION);*/
        HttpGet request = new HttpGet("https://raider.io/api/v1/guilds/profile?region=us&realm=Quelthalas&name=Honor%20Preservation&fields=raid_progression%2Craid_rankings");
        HttpResponse response = client.execute(request);
        return EntityUtils.toString(response.getEntity());
    }


}
