package com.project.member.dao;

import com.project.client.oauth.kakao.dto.OAuthUser;
import com.project.member.dto.NaverMemberDto;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
@RequiredArgsConstructor
public class MemberDao {

    private final SqlSessionTemplate sqlSession;

    public int insertMember(Member member) {
        return sqlSession.insert("memberMapper.insert", member);
    }

    public boolean exist(String provider, String providerId) {
        Map<String, Object> params = new HashMap<>();
        params.put("provider", provider);
        params.put("providerId", providerId);
        return sqlSession.selectOne("memberMapper.select", params) != null;
    }

    public Member find(String provider, String providerId) {
        Map<String, Object> params = new HashMap<>();
        params.put("provider", provider);
        params.put("providerId", providerId);
        return sqlSession.selectOne("memberMapper.select", params);
    }


    public int naverLogin(OAuthUser oAuthUser) {
        return sqlSession.insert("memberMapper.NaverLogin",oAuthUser);
    }

    public boolean naverExist(OAuthUser oAuthUser) {
        return sqlSession.selectOne("memberMapper.naverExist",oAuthUser) == null;

    }
}
