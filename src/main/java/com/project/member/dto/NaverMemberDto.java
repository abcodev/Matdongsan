package com.project.member.dto;


import com.project.client.oauth.kakao.dto.OAuthUser;
import com.project.member.vo.Member;
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
    private String name;
    private String profileImage;




}
