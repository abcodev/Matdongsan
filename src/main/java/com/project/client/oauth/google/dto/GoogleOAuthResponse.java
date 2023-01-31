package com.project.client.oauth.google.dto;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.project.client.oauth.OAuthUser;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class GoogleOAuthResponse {
    private String sub;
    private String name;
    private String email;
    private String picture;


    public OAuthUser toOAuth2USer(){
        return new OAuthUser("GOOGLE", sub, name, email, picture);
    }

}
