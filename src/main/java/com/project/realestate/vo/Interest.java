package com.project.realestate.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Interest {
    private long memberNo;
    private String estateNo;
    private String bldgNm;
    private String most;

}
