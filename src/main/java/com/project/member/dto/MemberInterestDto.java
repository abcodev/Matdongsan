package com.project.member.dto;

import com.project.realestate.vo.Interest;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
public class MemberInterestDto {

    private long memberNo;
    private String provider;
    private String providerId;
    private String nickName;
    private String estateNo;
    private String bldgNm;
    private String address;
    private List<Interest> interestList;
}
