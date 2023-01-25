package com.project.member.service;

import com.project.client.oauth.OAuthClient;
import com.project.client.oauth.OAuthUser;
import com.project.client.oauth.service.OAuthClientService;
import com.project.member.dao.MemberDao;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final OAuthClientService oAuthClientService;
    private final MemberDao memberDao;

    public Member login(HttpSession session, String provider, String code, String state) {
        OAuthClient oAuthClient = oAuthClientService.getClient(provider);
        OAuthUser oAuthUser = oAuthClient.getUserProfile(session, code, state);

        Member member = Member.of(oAuthUser);
        if (memberDao.exist(oAuthUser.getProvider(), oAuthUser.getId())) {
            memberDao.insertMember(member);
        }
        return memberDao.select(member.getProvider(), member.getProviderId());
    }
}





