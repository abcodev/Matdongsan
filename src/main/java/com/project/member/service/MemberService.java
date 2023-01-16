package com.project.member.service;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.project.client.oauth.OAuthClient;
import com.project.client.oauth.kakao.KakaoOAuthClient;
import com.project.client.oauth.OAuthUser;
import com.project.client.oauth.service.OAuthClientService;
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

    private final OAuthClientService oAuthClientService;
    private final MemberDao memberDao;

    public Member login(HttpSession session, String provider, String code, String state) {
        OAuthClient oAuthClient = oAuthClientService.getClient(provider);
        OAuthUser oAuthUser = oAuthClient.getUserProfile(session, code, state);

//        private Member loginCheck(OAuthUser oAuthUser){
//            Member member = Member.of(oAuthUser);
//            if (memberDao.exist(oAuthUser.getProvider(), oAuthUser.getId())) {
//                memberDao.insertMember(member);
//            }
//            return member;
//        }

        if (memberDao.exist(oAuthUser.getProvider(), oAuthUser.getId())) {
            return memberDao.find(oAuthUser.getProvider(), oAuthUser.getId());
        } else {
            Member member = Member.of(oAuthUser);
            memberDao.insertMember(member);

            return member;
        }
    }

}


