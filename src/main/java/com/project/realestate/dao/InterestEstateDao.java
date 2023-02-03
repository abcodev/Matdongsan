package com.project.realestate.dao;

import com.project.member.vo.Member;
import com.project.realestate.dto.RealEstateMainListDto;
import com.project.realestate.vo.Interest;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
@RequiredArgsConstructor
public class InterestEstateDao {

    private final SqlSessionTemplate sqlSession;

    public boolean checkInterest(String estateNo, long memberNo) {
        Map<String, Object> params = new HashMap<>();
        params.put("estateNo", estateNo);
        params.put("memberNo", memberNo);
        return sqlSession.selectOne("interestEstateMapper.checkInterest", params) != null;
    }

    public void insert(String estateNo, long memberNo) {
        Map<String, Object> params = new HashMap<>();
        params.put("estateNo", estateNo);
        params.put("memberNo", memberNo);
        sqlSession.insert("interestEstateMapper.insert", params);
    }

    public void delete(String estateNo, long memberNo) {
        Map<String, Object> params = new HashMap<>();
        params.put("estateNo", estateNo);
        params.put("memberNo", memberNo);
        sqlSession.delete("interestEstateMapper.delete", params);
    }

    public List<Interest> getMostInterest() {
        return sqlSession.selectList("interestEstateMapper.mostInterest");
    }

}
