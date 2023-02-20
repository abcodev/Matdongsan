package com.project.client.oauth.google;


import com.project.client.oauth.OAuthClient;
import com.project.client.oauth.OAuthToken;
import com.project.client.oauth.OAuthUser;
import com.project.client.oauth.google.dto.GoogleOAuthRequest;
import com.project.client.oauth.google.dto.GoogleOAuthResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Component;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;


/**
 * Authentication Code를 전달 받는 엔드포인트
 **/
@Slf4j
@RequiredArgsConstructor
@Component("GOOGLE_OAuthClient")
public class GoogleOAuthClient implements OAuthClient {
    final static String GOOGLE_AUTH_BASE_URL = "https://www.googleapis.com/oauth2";
    private static final String GOOGLE_TOKEN_BASE_URL = "https://oauth2.googleapis.com/token";
    final static String GOOGLE_REVOKE_TOKEN_BASE_URL = "https://oauth2.googleapis.com/revoke";

    private final static String CLIENT_ID = "637720502450-bcin8qk6a4atnjaccvsfspa823o725ep.apps.googleusercontent.com";
    private final static String CLIENT_SECRET = "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";
    private final static String REDIRECT_URI = "http://matdongsan.site/google/callback";
    private final RestTemplate restTemplate;

    @Override
    public String generateRedirectUrl(HttpSession session) {
        return "https://accounts.google.com/o/oauth2/v2/auth?client_id=637720502450-bcin8qk6a4atnjaccvsfspa823o725ep.apps.googleusercontent.com&redirect_uri=http://matdongsan.site/google/callback&response_type=code&scope=email%20profile%20openid&access_type=offline";
    }


    public OAuthToken getToken(HttpSession session, String code, String state) {

        //Google OAuth Access Token 요청을 위한 파라미터 세팅
        GoogleOAuthRequest googleOAuthRequestParam = GoogleOAuthRequest
                .builder()
                .clientId(CLIENT_ID)
                .clientSecret(CLIENT_SECRET)
                .code(code)
                .redirectUri(REDIRECT_URI)
                .grantType("authorization_code").build();
       try {
           OAuthToken response = restTemplate.postForObject(GOOGLE_TOKEN_BASE_URL, googleOAuthRequestParam, OAuthToken.class);
           if (response == null) {
               throw new RuntimeException();
           }
           return response;
       }catch (Exception ex){
           log.info(ex.getMessage());
           throw new RuntimeException(ex);
       }
    }

    @Override
    public OAuthToken renewToken(String refreshToken) {
        MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
        params.add("client_id", CLIENT_ID);
        params.add("client_secret", CLIENT_SECRET);
        params.add("grant_type", "refresh_token");
        params.add("refresh_token", refreshToken);

        try {
            OAuthToken response = restTemplate.postForObject(GOOGLE_TOKEN_BASE_URL, params, OAuthToken.class);
            if (response == null) {
                throw new RuntimeException();
            }

            response.setOldRefreshToken(refreshToken);
            return response;
        }catch (Exception ex){
            log.info(ex.getMessage());
            throw new RuntimeException(ex);
        }
    }

    @Override
    public OAuthUser getUserProfile(HttpSession session, OAuthToken oAuthToken) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "Bearer" + oAuthToken.getAccessToken());
        HttpEntity<Void> entity = new HttpEntity<>(headers);

        try {
            GoogleOAuthResponse response = restTemplate.postForObject(GOOGLE_AUTH_BASE_URL + "/v3/userinfo", entity, GoogleOAuthResponse.class);
            if (response == null) {
                throw new RuntimeException();
            }
            return response.toOAuth2USer();
        }catch (Exception ex){
            log.info(ex.getMessage());
            throw new RuntimeException(ex);
        }
    }

    @Override
    public void unlink(OAuthToken token) {
        try {
            MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
            params.add("token", token.getAccessToken());
            UriComponentsBuilder uriComponentsBuilder = UriComponentsBuilder.fromUriString(GOOGLE_REVOKE_TOKEN_BASE_URL);
            uriComponentsBuilder.queryParams(params);
            restTemplate.postForObject(uriComponentsBuilder.toUriString(), null, Void.class);
        } catch (Exception ex){
            log.info(ex.getMessage());
            throw new RuntimeException(ex);
        }
    }


}