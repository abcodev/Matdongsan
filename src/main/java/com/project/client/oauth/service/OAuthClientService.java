package com.project.client.oauth.service;

import com.project.client.oauth.OAuthClient;
import com.project.client.oauth.OAuthUser;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
@RequiredArgsConstructor
public class OAuthClientService {

    /*
        Map 으로 의존성 주입
        -> Key : Bean 의 이름 / Value : Bean 이 주입됨
        -> 클래스의 이름이 Bean 이름이 된다.

        {"KAKAO_OAuthClient": ~~, "NAVER_OAuthClient": ~~, "GOOGLE_OAuthClient": ~~}
        LoginController api 가 호출됐으면 provider 의 의존성은 KakaoOAuthClient(구체적클래스)
        런타임 시점의 의존성 -> 다형성
        같은 요청인데도 처리하는 방식이 달라질 수 있음

        다형성이 가능하게 하는 원천 -> Upcasting
        OauthClient 자리에 kakao~~ 가 들어오게됨 -> KakaoOauthClient 안에서 재정의 해주는 것
        컴파일 시점에는 OAuthClient 였던 자리가 KakaoOauthClient 로 바뀌니까 -> 이게 되면 업캐스팅이 자동으로 될 수 있음
     */

    private final Map<String, OAuthClient> clients;

    public OAuthClient getClient(String provider) {
        OAuthClient client = clients.get(provider.toUpperCase() + "_OAuthClient");
        if (client == null) {
            throw new RuntimeException("지원하지 않는 Provider 입니다.");
        }
        return client;
    }

}
