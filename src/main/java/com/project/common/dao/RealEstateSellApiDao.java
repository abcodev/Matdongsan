package com.project.common.dao;

import com.project.common.vo.RealEstateSell;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class RealEstateSellApiDao {

    private final SqlSessionTemplate sqlSession;

//    public void truncate() {
//        sqlSession.delete("realEstateMapper.deleteAll");
//    }

    public void batchInsert(List<RealEstateSell> sellList) {
        sqlSession.insert("sellMapper.batchInsert", sellList);
    }


}
