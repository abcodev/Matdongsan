package com.project.realestate.service;

import com.project.client.seoulApi.SeoulApiClient;
import com.project.realestate.repository.RealEstateSellApiRepository;
import com.project.realestate.vo.RealEstateSell;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class RealEstateApiService {

    private final RealEstateSellApiRepository realEstateSellApiRepository;
    private final SeoulApiClient seoulApiClient;

    @Autowired
    public RealEstateApiService(RealEstateSellApiRepository realEstateSellApiRepository, SeoulApiClient seoulApiClient,
                                SqlSession sqlSession) {
        this.realEstateSellApiRepository = realEstateSellApiRepository;
        this.seoulApiClient = seoulApiClient;
    }

    public int retrieveAndSave() {
        //LocalDate latestDealYmd = realEstateSellApiRepository.latestDealYmd();
        List<RealEstateSell> sellList = seoulApiClient.getRealEstateSellList()
                .stream()
                .filter(realEstateSellDto -> realEstateSellDto.getHouseType().equals("아파트"))
                //.filter(realEstateSellDto -> realEstateSellDto.isAfter(latestDealYmd))
                .map(RealEstateSell::of)
                .collect(Collectors.toList());

        if (sellList.isEmpty()) {
            return 0;
        }
        realEstateSellApiRepository.truncate();
        realEstateSellApiRepository.batchInsert(sellList);
        return sellList.size();
    }



}
