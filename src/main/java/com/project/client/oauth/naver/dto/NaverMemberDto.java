package com.project.client.oauth.naver.dto;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Builder
@AllArgsConstructor
public class NaverMemberDto {
    private String provider;
    private String providerId;
    private String email;
    private String memberName;
    private String profileImage;




}
