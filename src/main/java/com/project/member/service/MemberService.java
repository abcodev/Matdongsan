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

    public NaverMemberDto Test(HttpSession session, String code, String state) throws IOException, ParseException {
        OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        apiResult = naverLoginBO.getUserProfile(oauthToken);  //String형식의 json데이터

        JSONParser parser = new JSONParser();
        Object obj = parser.parse(apiResult);
        JSONObject jsonObj = (JSONObject) obj;

        //3. 데이터 파싱
        //Top레벨 단계 _response 파싱
        JSONObject response_obj = (JSONObject)jsonObj.get("response");


        // 프로필 조회
        String providerId = (String) response_obj.get("id");
        String email = (String) response_obj.get("email");
        String name = (String) response_obj.get("name");
        String profileImage = (String) response_obj.get("profile_image");
        String provider = "NAVER";
        NaverMemberDto loginUser = new NaverMemberDto(provider,providerId,email,name,profileImage);

        if(memberDao.naverExist(loginUser)){
            memberDao.naverLogin(loginUser);
        }
        return loginUser;

    }
}


