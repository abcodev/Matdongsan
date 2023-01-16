package com.project.client.oauth.service;

import com.project.client.oauth.OAuthClient;
import com.project.client.oauth.OAuthUser;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
@RequiredArgsConstructor
public class OAuthClientService {
    /**
     * OAuthClient 는 인터페이스 -> 내부로직없음 -> 추상화타입.
     * 로그인을 하기 위해서는 이 추상화타입으로는 할 수어서 구체적인 객체가 필요함
     * KakaoOAuthClient, NaverOAuthClient, GoogleOAuthClient
     * 공통점은 OAuthClient를 구현하려고함 (implements)
     */

    // 맵으로 의존성을 주입하면 key에는 bean의 이름, value에는 bean이 주입됨 클래스 이름이 빈 이름이 됨
    // Key : Bean의 이름
    // Value : Bean이 주입
    // {"KAKAO_OAuthClient": ~~~~, "NAVER_OAuthClient": ~~~~, "GOOGLE_OAuthClient": ~~~~}
    // LoginController api가 호출됐으면 provider의 의존성은 Naver_OAuthClient(구체적클래스) 런타임 시점의 의존성 -> 다형성
    // 같은 요청인데도 처리하는 방식이 달라질 수 있음
    // 다형성이 가능하게 하는 원천은 upcasting OauthClient 자리에 naver~ 가 들어오게됨
    private final Map<String, OAuthClient> clients;

    public OAuthClient getClient(String provider) {
        OAuthClient client = clients.get(provider.toUpperCase() + "_OAuthClient");
        if (client == null) {
            throw new RuntimeException("지원하지 않는 Provider 입니다.");
        }
        return client;
    }

}
