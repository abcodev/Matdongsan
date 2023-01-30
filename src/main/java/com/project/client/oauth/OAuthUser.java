package com.project.client.oauth;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

/*
    소셜 로그인 플로우

    MemberService 에서 외부(kakao, naver, google)와 통신하는 시점에서 ~OAuthClient 클라이언트 객체에게 요청을 함
    MemberService 한테는 ~OAuthClient 한테 로그인 요청을 하고 OAuthUser 객체를 반환함
    -> 제공받은 데이터로 필요한 형태로 데이터를 만들어둠

    OAuthUser 공용객체
    OAuthUser 를 받으면 MemberService 는 이후 처리를 함 (회원가입 하거나, 사용자 정보를 반환하거나)

    OAuthClient : kakao, naver, google 클라이언트한테 요청을 보내고 OAuthUser 를 받음
    OAuthClient 인터페이스는 클래스를 상속받는게 아니라 kakao, naver, google 가 구현하는것
                -> 이렇게 한 이유는 카카오가 아니라 나중에 다른게 들어올 수 있어서 들어올 때마다
                   MemberService 에 하드코딩으로 박혀있으면 서비스를 계속 수정해야하니까, 서비스는 client 라는 인터페이스만 받아오게 하려고

    OAuthUser 를 만드는 책임은 OAUthClient 한테 있음
    login 요청을 Client 객체(MemberService)의 요청을 받아 OAuthUser 객체를 응답해 주게됨

    getAccessToken -> Authorization 인증토큰을 인증서버(kakao, naver, google)로 보내면(로그인 하면) AccessToken 을 줌 (로그인 할수있는지 토큰을 주는것)
    로그인 했으면 사용자 정보가 필요하니까 getUserInfo 라는 과정이 필요함
    사용자 정보를 가져오는거니까 getAccessToken 을 같이 보내야하는데 AccessToken 을 보내면 사용자 정보를 받을 수 있음
    사용자 정보 : Provider 가 주는것 -> 모양이 다 다름
    OAthUser 통해서 똑같은 모양으로 만들고 OAuthAttribute 똑같은 모양으로 주는게 OAuthUser 그 과정을 하는게 toOAuth2User

 */

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






