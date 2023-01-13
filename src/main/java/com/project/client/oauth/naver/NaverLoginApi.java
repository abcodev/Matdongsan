package com.project.client.oauth.naver;

import com.github.scribejava.core.builder.api.DefaultApi20;
public class NaverLoginApi extends DefaultApi20{


    @Override
    public String getAccessTokenEndpoint() {
        return null;
    }

    @Override
    protected String getAuthorizationBaseUrl() {
        return null;
    }
}
