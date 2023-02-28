package com.project.realestate.repository;

import com.project.realestate.vo.RealEstateRent;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class RealEatateRentApiRepository {
    private final SqlSessionTemplate sqlSession;

//    public void truncateData() {
//        sqlSession.delete("rentMapper.deleteAll");
//    }

    public void packageInsert(List<RealEstateRent> houseList) {
        sqlSession.insert("rentMapper.packageInsert", houseList);
    }

    public LocalDate latestDealYmd() {
        String latestDealYmd = sqlSession.selectOne("sellMapper.selectLatestDealYmd");
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
        return LocalDate.parse(latestDealYmd, formatter);
    }
}
