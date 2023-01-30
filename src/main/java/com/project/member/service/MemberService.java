package com.project.member.service;

import com.project.client.oauth.OAuthClient;
import com.project.client.oauth.OAuthUser;
import com.project.client.oauth.service.OAuthClientService;
import com.project.member.dao.MemberDao;
import com.project.member.dto.MemberDto;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final OAuthClientService oAuthClientService;
    private final MemberDao memberDao;
    private final SqlSessionTemplate sqlSession;

    public Member login(HttpSession session, String provider, String code, String state) {
        OAuthClient oAuthClient = oAuthClientService.getClient(provider);
        OAuthUser oAuthUser = oAuthClient.getUserProfile(session, code, state);

        Member member = Member.of(oAuthUser);
        if (memberDao.exist(oAuthUser.getProvider(), oAuthUser.getId())) {
            memberDao.insertMember(member);
        }
        return memberDao.select(member.getProvider(), member.getProviderId());


    }

    public MemberDto loginMember(MemberDto m){

        MemberDto loginMem = memberDao.loginMember(sqlSession, m);

        return loginMem;
    }

    public int updateMember(MemberDto m) {
        return memberDao.updateMember(sqlSession, m);
    }
}





