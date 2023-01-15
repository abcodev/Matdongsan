package com.project.client.oauth.kakao;


import com.project.client.oauth.kakao.dto.OAuthUser;

public interface OAuthClient {
    String getAccessToken(String code);
    OAuthUser getUserInfo(String accessToken);
}
