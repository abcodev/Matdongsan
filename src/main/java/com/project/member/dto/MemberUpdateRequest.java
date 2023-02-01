package com.project.member.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class MemberUpdateRequest {

    private long memberNo;
    private String nickName;
    private String email;
    private String phone;
    private String address;
    private String profileImage;
    private String interestState;

}
