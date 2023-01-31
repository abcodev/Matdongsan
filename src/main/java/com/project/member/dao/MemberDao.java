package com.project.member.dao;

import com.project.member.dto.MemberDto;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
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
        return sqlSession.selectOne("memberMapper.select", params) == null;
    }

    public Member select(String provider, String providerId) {
        Map<String, Object> params = new HashMap<>();
        params.put("provider", provider);
        params.put("providerId", providerId);
        return sqlSession.selectOne("memberMapper.select", params);
    }

    public int updateMember(SqlSession sqlSession, MemberDto m){
        return sqlSession.update("memberMapper.update", m);
    }

    public MemberDto loginMember(SqlSession sqlSession, MemberDto m){
        return sqlSession.selectOne("memberMapper.loginMember", m);
    }


    public void updateRecentAccess(String provider, String providerId) {
        Map<String, Object> params = new HashMap<>();
        params.put("provider", provider);
        params.put("providerId", providerId);
        sqlSession.update("memberMapper.updateRecentAccess", params);
    }
}
