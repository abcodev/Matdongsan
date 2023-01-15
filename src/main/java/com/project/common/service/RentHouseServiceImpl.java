package com.project.common.service;

import com.project.common.dao.RentHouseDao;
import com.project.common.dto.RentHouseDto;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Log4j
public class RentHouseServiceImpl implements RentHouseService{

    private RentHouseDao rentHouseDao;

    @Autowired
    public RentHouseServiceImpl(RentHouseDao rentHouseDao) {
        this.rentHouseDao = rentHouseDao;
    }

    @Override
    public void insertData(RentHouseDto dataDto) {

        RentHouseDao.insertData(dataDto);
    }

    @Override
    public List<RentHouseDto> houseList() {
        return rentHouseDao.houseList();
    }
}
