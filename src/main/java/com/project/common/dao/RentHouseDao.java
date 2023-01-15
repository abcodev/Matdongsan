package com.project.common.dao;

import com.project.common.dto.RentHouseDto;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RentHouseDao {
    public void insertData(RentHouseDto dataDto){
    }

    List<RentHouseDto> houseList() throws Exception;
}
