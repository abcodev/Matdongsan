package com.project.client.oauth.kakao;

import com.project.client.oauth.OAuthClient;
import com.project.client.oauth.kakao.dto.KakaoOAuthAttribute;
import com.project.client.oauth.OAuthToken;
import com.project.client.oauth.OAuthUser;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Component;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.http.HttpSession;

@Component("KAKAO_OAuthClient")
@Slf4j
@RequiredArgsConstructor
public class KakaoOAuthClient implements OAuthClient {

    private final static String authBaseUrl = "https://kauth.kakao.com";
    private final static String apiBaseUrl = "https://kapi.kakao.com";

    private final RestTemplate restTemplate;

    public String generateRedirectUrl(HttpSession session){
        return "https://kauth.kakao.com/oauth/authorize?client_id=857210a016a83ceffadc50f61d649c7b&redirect_uri=http://localhost:8070/Matdongsan/kakao/callback&response_type=code";
    }

    public String getAccessToken(String code) {
        MultiValueMap<String, String> body = new LinkedMultiValueMap<>();
        body.add("grant_type", "authorization_code");
        body.add("client_id", "671b81703e84eaa09879d3693a30a73e");
        body.add("redirect_uri", "http://localhost:8070/Matdongsan/kakao/callback");
        body.add("code", code);

        try {
            OAuthToken response = restTemplate.postForObject(authBaseUrl + "/oauth/token", body, OAuthToken.class);
            if (response == null) {
                throw new RuntimeException();
            }
            return response.getAccessToken();
        } catch (Exception ex) {
            log.info(ex.getMessage());
            throw new RuntimeException(ex);
        }
    }

    @Override
    public OAuthUser getUserProfile(HttpSession session, String code, String state) {
        String accessToken = this.getAccessToken(code);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "Bearer " + accessToken);
        HttpEntity<Void> entity = new HttpEntity<>(headers);

        try {
            KakaoOAuthAttribute response = restTemplate.postForObject(apiBaseUrl + "/v2/user/me", entity, KakaoOAuthAttribute.class);
            if (response == null) {
                throw new RuntimeException();
            }
            return response.toOAuth2User();
        } catch (Exception ex) {
            log.info(ex.getMessage());
            throw new RuntimeException(ex);
        }
    }

}
