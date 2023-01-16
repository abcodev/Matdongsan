package com.project.client.seoulApi.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.project.client.seoulApi.dto.RentHouseDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class tbLnOpendataRentV {
    @JsonProperty("row")
    private RentHouseDto[] houseList;
}
