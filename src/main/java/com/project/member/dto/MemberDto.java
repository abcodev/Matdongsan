package com.project.member.dto;

import lombok.*;

@Setter
@Getter
@Builder
@AllArgsConstructor
public class MemberDto {

    private long memberNo;
    private String nickName;
    private String email;
    private String phone;
    private String address;
    private String provider;
    private String providerId;
}
