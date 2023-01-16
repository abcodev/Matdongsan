package com.project.client.oauth;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

@Getter
@AllArgsConstructor
@ToString
public class OAuthUser {
    private String provider;
    private String id;
    private String nickname;
    private String email;
    private String profileImage;

}
