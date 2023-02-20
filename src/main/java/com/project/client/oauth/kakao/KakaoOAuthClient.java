package com.project.client.oauth.kakao;

import com.project.client.oauth.OAuthClient;
import com.project.client.oauth.kakao.dto.KakaoOAuthAttribute;
import com.project.client.oauth.OAuthToken;
import com.project.client.oauth.OAuthUser;
import com.project.client.oauth.kakao.dto.KakaoUnlinkResponse;
import org.springframework.beans.factory.annotation.Value;
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

    /*
        클래스 & 객체
        클래스 : 클래스에 있는 공간(변수)
        클래스 1개당 객체는 n개 나올 수 있다.
        인스턴스 변수 : 객체마다 따로따로 있는것.
     */

    // final static 은 상수, 고정된 값 표현하기위해 주로 씀, 객체생성을 위한 메서드에는 static 을 붙여야 함
    private final static String AUTH_BASE_URL = "https://kauth.kakao.com";
    private final static String API_BASE_URL = "https://kapi.kakao.com";

    @Value("${matdongsan.oauth.kakao.client_id}")
    private String clientId;

    @Value("${matdongsan.oauth.kakao.redirect_url}")
    private String redirectUrl;

    private final RestTemplate restTemplate;

    @Override
    public String generateRedirectUrl(HttpSession session) {
//        return "https://kauth.kakao.com/oauth/authorize?client_id=857210a016a83ceffadc50f61d649c7b&redirect_uri=" + redirectUrl + "&response_type=code";
        return "https://kauth.kakao.com/oauth/authorize?client_id=857210a016a83ceffadc50f61d649c7b&redirect_uri=http://matdongsan.site&response_type=code";
    }

    public OAuthToken getToken(HttpSession session, String code, String state) {
        MultiValueMap<String, String> body = new LinkedMultiValueMap<>();
        body.add("grant_type", "authorization_code");
        body.add("client_id", clientId);
//        body.add("redirect_uri", redirectUrl);
        body.add("code", code);

        try {
            OAuthToken response = restTemplate.postForObject(AUTH_BASE_URL + "/oauth/token", body, OAuthToken.class);
            if (response == null) {
                throw new RuntimeException();
            }
            return response;
        } catch (Exception ex) {
            log.info(ex.getMessage());
            throw new RuntimeException(ex);
        }
    }

    @Override
    public OAuthToken renewToken(String refreshToken) {
        MultiValueMap<String, String> body = new LinkedMultiValueMap<>();
        body.add("grant_type", "refresh_token");
        body.add("client_id", clientId);
        body.add("refresh_token", refreshToken);

        try {
            OAuthToken response = restTemplate.postForObject(AUTH_BASE_URL + "/oauth/token", body, OAuthToken.class);
            if (response == null) {
                throw new RuntimeException();
            }
            return response;
        } catch (Exception ex) {
            log.info(ex.getMessage());
            throw new RuntimeException(ex);
        }
    }

    @Override
    public OAuthUser getUserProfile(HttpSession session, OAuthToken oAuthToken) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "Bearer " + oAuthToken.getAccessToken());
        HttpEntity<Void> entity = new HttpEntity<>(headers);

        try {
            KakaoOAuthAttribute response = restTemplate.postForObject(API_BASE_URL + "/v2/user/me", entity, KakaoOAuthAttribute.class);
            if (response == null) {
                throw new RuntimeException();
            }
            return response.toOAuth2User();
        } catch (Exception ex) {
            log.info(ex.getMessage());
            throw new RuntimeException(ex);
        }
    }

    @Override
    public void unlink(OAuthToken token) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "Bearer " + token.getAccessToken());
        HttpEntity<Void> entity = new HttpEntity<>(headers);

        try {
            KakaoUnlinkResponse response = restTemplate.postForObject(API_BASE_URL + "/v1/user/unlink", entity, KakaoUnlinkResponse.class);
            if (response == null) {
                throw new RuntimeException();
            }
        } catch (Exception ex) {
            log.info(ex.getMessage());
            throw new RuntimeException(ex);
        }
    }

}
