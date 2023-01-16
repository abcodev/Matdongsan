package com.project.client.oauth;


import javax.servlet.http.HttpSession;

public interface OAuthClient {
    String generateRedirectUrl(HttpSession session);
    OAuthUser getUserProfile(HttpSession session, String code, String state);

}
