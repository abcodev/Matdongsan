package com.project.client.oauth;


import javax.servlet.http.HttpSession;

    /*
        OAuthClient 는 인터페이스 -> 내부로직없음 -> 추상화타입.
        로그인을 하기 위해서는 이 추상화타입으로는 할 수어서 구체적인 객체가 필요함
        KakaoOAuthClient, NaverOAuthClient, GoogleOAuthClient -> 공통점은 OAuthClient 를 구현하는것 (implements)
     */

public interface OAuthClient {
    String generateRedirectUrl(HttpSession session);
    OAuthUser getUserProfile(HttpSession session, String code, String state);

}
