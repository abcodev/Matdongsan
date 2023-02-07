package com.project.client.oauth;

import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.github.scribejava.core.model.OAuth2AccessToken;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class OAuthToken {
    private String accessToken;
    private String refreshToken;
    @JsonAlias(value = {"refresh_token_expires_in", "expires_in"})
    private long refreshTokenExpiresIn;

    public static OAuthToken of(OAuth2AccessToken token) {
        return new OAuthToken(token.getAccessToken(), token.getRefreshToken(), token.getExpiresIn());
    }
}
