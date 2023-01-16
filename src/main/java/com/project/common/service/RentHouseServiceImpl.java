package com.project.common.service;

import com.project.client.seoulApi.ApiTemplate;

import com.project.common.dao.RentHouseDao;
import com.project.common.dto.RentHouseDto;
import com.project.common.vo.RentHouse;
import lombok.extern.log4j.Log4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j
public class RentHouseServiceImpl implements RentHouseService{

    private RentHouseDao rentHouseDao;
    private ApiTemplate apiTemplate;

    @Autowired
    public RentHouseServiceImpl(RentHouseDao rentHouseDao, ApiTemplate apiTemplate,
                                    SqlSession sqlSession) {
        this.rentHouseDao = rentHouseDao;
        this.apiTemplate = apiTemplate;
    }


    public int getAndSave() {
        List<RentHouse> houseList = apiTemplate.getRentHouseList()
                .stream()
                .filter(rentHouseDto -> rentHouseDto.getHouseType().equals("아파트"))
                .map(RentHouse::of)
                .collect(Collectors.toList());

        rentHouseDao.truncateData();
        rentHouseDao.packageInsert(houseList);
        return houseList.size();
    }
}
