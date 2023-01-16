package com.project.common.service;

import com.project.client.seoulApi.SeoulRentApiClient;

import com.project.common.dao.RealEatateRentApiDao;
import com.project.common.vo.RealEstateRent;
import lombok.extern.log4j.Log4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j
public class RealEstateRentAPIServiceImpl implements RealEstateRentApiService {

    private RealEatateRentApiDao realEatateRentApiDao;
    private SeoulRentApiClient seoulRentApiClient;

    @Autowired
    public RealEstateRentAPIServiceImpl(RealEatateRentApiDao realEatateRentApiDao, SeoulRentApiClient seoulRentApiClient,
                                        SqlSession sqlSession) {
        this.realEatateRentApiDao = realEatateRentApiDao;
        this.seoulRentApiClient = seoulRentApiClient;
    }


    public int getAndSave() {
        List<RealEstateRent> houseList = seoulRentApiClient.getRentHouseList()
                .stream()
                .filter(rentHouseDto -> rentHouseDto.getHouseType().equals("아파트"))
                .map(RealEstateRent::of)
                .collect(Collectors.toList());

        realEatateRentApiDao.truncateData();
        realEatateRentApiDao.packageInsert(houseList);
        return houseList.size();
    }
}
