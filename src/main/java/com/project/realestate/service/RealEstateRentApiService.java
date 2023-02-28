package com.project.realestate.service;

import com.project.client.seoulApi.SeoulRentApiClient;

import com.project.realestate.repository.RealEatateRentApiRepository;
import com.project.realestate.vo.RealEstateRent;
import lombok.extern.log4j.Log4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j
public class RealEstateRentApiService {

    private RealEatateRentApiRepository realEatateRentApiRepository;
    private SeoulRentApiClient seoulRentApiClient;

    @Autowired
    public RealEstateRentApiService(RealEatateRentApiRepository realEatateRentApiRepository, SeoulRentApiClient seoulRentApiClient,
                                    SqlSession sqlSession) {
        this.realEatateRentApiRepository = realEatateRentApiRepository;
        this.seoulRentApiClient = seoulRentApiClient;
    }


    public int getAndSave() {
//        LocalDate latestDealYmd = realEatateRentApiRepository.latestDealYmd();
        List<RealEstateRent> houseList = seoulRentApiClient.getRentHouseList()
                .stream()
                .filter(rentHouseDto -> rentHouseDto.getHouseType().equals("아파트"))
//                .filter(realEstateRentDto -> realEstateRentDto.isAfter(latestDealYmd))
                .map(RealEstateRent::of)
                .collect(Collectors.toList());

//        realEatateRentApiRepository.truncate();
        realEatateRentApiRepository.packageInsert(houseList);
        return houseList.size();
    }
}
