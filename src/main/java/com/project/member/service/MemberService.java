package com.project.member.service;

import com.project.client.oauth.kakao.KakaoOAuthClient;
import com.project.client.oauth.kakao.dto.OAuthUser;
import com.project.member.dao.MemberDao;
import com.project.member.dto.NaverMemberDto;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final KakaoOAuthClient kakaoOAuthClient;
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


    public int naverLogin(NaverMemberDto loginUser) {
        if(memberDao.naverExist(loginUser)){
            return memberDao.naverLogin(loginUser);
        }
        return 1;
    }
}
