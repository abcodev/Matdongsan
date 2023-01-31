package com.project.realestate.service;

import com.project.client.seoulApi.SeoulRentApiClient;

import com.project.realestate.dao.RealEatateRentApiDao;
import com.project.realestate.vo.RealEstateRent;
import lombok.extern.log4j.Log4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
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
        LocalDate latestDealYmd = realEatateRentApiDao.latestDealYmd();
        List<RealEstateRent> houseList = seoulRentApiClient.getRentHouseList()
                .stream()
                .filter(rentHouseDto -> rentHouseDto.getHouseType().equals("아파트"))
//                .filter(realEstateRentDto -> realEstateRentDto.isAfter(latestDealYmd))
                .map(RealEstateRent::of)
                .collect(Collectors.toList());

//        realEatateRentApiDao.truncateData();
        realEatateRentApiDao.packageInsert(houseList);
        return houseList.size();
    }
}
