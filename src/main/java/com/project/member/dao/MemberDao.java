package com.project.member.dao;

import com.project.common.template.PageInfoCombine;
import com.project.member.dto.AllBoard;
import com.project.member.vo.Member;
import com.project.realestate.vo.Interest;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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


    public int updateMember(SqlSession sqlSession, Member m){
        return sqlSession.update("memberMapper.update", m);
    }

    public Member loginMember(SqlSession sqlSession, Member m){
        return sqlSession.selectOne("memberMapper.loginMember", m);
    }




    public void updateRecentAccess(String provider, String providerId) {
        Map<String, Object> params = new HashMap<>();
        params.put("provider", provider);
        params.put("providerId", providerId);
        sqlSession.update("memberMapper.updateRecentAccess", params);
    }

    public Member select(long memberNo) {
        return sqlSession.selectOne("memberMapper.selectByMemberNo", memberNo);
    }

//    public boolean checkInterest(String estateNo, long memberNo) {
//        Map<String, Object> params = new HashMap<>();
//        params.put("estateNo", estateNo);
//        params.put("memberNo", memberNo);
//        return sqlSession.selectOne("interestEstateMapper.checkInterest", params) != null;
//    }

    public void delete(String estateNo, long memberNo) {
        Map<String, Object> params = new HashMap<>();
        params.put("estateNo", estateNo);
        params.put("memberNo", memberNo);
        sqlSession.delete("memberMapper.delete", params);
    }


    public List<Interest> getInterestList(SqlSession sqlSession, Member m){
        return sqlSession.selectList("memberMapper.getInterestList", m);
    }


    public int selectListCount(SqlSession sqlSession, Member m){
        return sqlSession.selectOne("memberMapper.selectAllBoardCount", m);
    }

    public List<AllBoard> selectAllBoardList(SqlSession sqlSession, PageInfoCombine pageInfoCombine, Member m){
        RowBounds rowBounds = pageInfoCombine.generateRowBounds();
        return sqlSession.selectList("memberMapper.selectAllBoard",m,rowBounds);
    }

}
