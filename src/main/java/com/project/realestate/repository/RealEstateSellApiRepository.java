package com.project.realestate.repository;

import com.project.realestate.vo.RealEstateSell;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class RealEstateSellApiRepository {

    private final SqlSessionTemplate sqlSession;

    public void truncate() {
        sqlSession.delete("sellMapper.deleteAll");
    }

    public void batchInsert(List<RealEstateSell> sellList) {
        sqlSession.insert("sellMapper.batchInsert", sellList);
    }

//    public LocalDate latestDealYmd() {
//        String latestDealYmd = sqlSession.selectOne("sellMapper.selectLatestDealYmd");
//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
//        return LocalDate.parse(latestDealYmd, formatter);
//    }
}
