package com.project.member.service;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.project.client.oauth.kakao.KakaoOAuthClient;
import com.project.client.oauth.kakao.dto.OAuthUser;
import com.project.client.oauth.naver.NaverLoginBO;
import com.project.member.dao.MemberDao;
import com.project.member.dto.NaverMemberDto;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final KakaoOAuthClient kakaoOAuthClient;

    private final NaverLoginBO naverLoginBO;
    private String apiResult = null;
    private final MemberDao memberDao;

    public Member login(String code) {
        String accessToken = kakaoOAuthClient.getAccessToken(code);
        OAuthUser oAuthUser = kakaoOAuthClient.getUserInfo(accessToken);

        if (memberDao.exist(oAuthUser.getProvider(), oAuthUser.getId())) {
            return memberDao.find(oAuthUser.getProvider(), oAuthUser.getId());
        } else {
            Member member = Member.of(oAuthUser);
            memberDao.insertMember(member);

            return member;
        }
    }

    public OAuthUser Test(HttpSession session, String code, String state) throws IOException, ParseException {
        OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);

        OAuthUser oAuthUser = naverLoginBO.getUserProfile(oauthToken);  //String형식의 json데이터

        if(memberDao.naverExist(oAuthUser)){
            memberDao.naverLogin(oAuthUser);
        }
        return oAuthUser;

    }
}


