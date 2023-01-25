package com.project.realestate.service;

import com.project.client.seoulApi.SeoulApiClient;
import com.project.realestate.dao.RealEstateSellApiDao;
import com.project.realestate.vo.RealEstateSell;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class RealEstateApiServiceImpl implements RealEstateApiService{

    private final RealEstateSellApiDao realEstateSellApiDao;
    private final SeoulApiClient seoulApiClient;

    @Autowired
    public RealEstateApiServiceImpl(RealEstateSellApiDao realEstateSellApiDao, SeoulApiClient seoulApiClient,
                                    SqlSession sqlSession) {
        this.realEstateSellApiDao = realEstateSellApiDao;
        this.seoulApiClient = seoulApiClient;
    }

    public int retrieveAndSave() {
        List<RealEstateSell> sellList = seoulApiClient.getRealEstateSellList()
                .stream()
                .filter(realEstateSellDto -> realEstateSellDto.getHouseType().equals("아파트"))
                .map(RealEstateSell::of)
                .collect(Collectors.toList());

        realEstateSellApiDao.truncate();
        realEstateSellApiDao.batchInsert(sellList);
        return sellList.size();
    }






}
