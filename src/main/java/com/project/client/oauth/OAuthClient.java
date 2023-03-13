package com.project.client.oauth;

import javax.servlet.http.HttpSession;

public interface OAuthClient {
    String generateRedirectUrl(HttpSession session);
    OAuthToken getToken(HttpSession session, String code, String state);
    OAuthToken renewToken(String refreshToken);
    OAuthUser getUserProfile(HttpSession session, OAuthToken token);
    void unlink(OAuthToken token);
}

    /*
        OAuthClient 는 인터페이스 -> 내부로직없음 -> 추상화타입.
        로그인을 하기 위해서는 이 추상화타입으로는 할 수어서 구체적인 객체가 필요함
        KakaoOAuthClient, NaverOAuthClient, GoogleOAuthClient -> 공통점은 OAuthClient 를 구현하는것 (implements)
     */
