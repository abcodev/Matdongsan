package com.project.client.oauth.kakao.dto;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.project.client.oauth.OAuthUser;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class KakaoOAuthAttribute {
    private String id;
    private KakaoOAuthProperties properties;
    private String email;

    public OAuthUser toOAuth2User() {
        return new OAuthUser("KAKAO", id, properties.getNickname(), email, properties.getProfileImage());
    }
}