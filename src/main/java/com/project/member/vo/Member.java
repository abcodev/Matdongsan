package com.project.member.vo;

import com.project.client.oauth.OAuthUser;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Member {

    private long memberNo;
    private String provider;
    private String providerId;
    private String memberName;
    private String profileImage;
    private String email;
    private String nickName;
    private String phone;
    private String address;
    private String status;
    private String grade;

    public static Member of(OAuthUser oAuthUser) {
        return Member.builder()
                .provider(oAuthUser.getProvider())
                .providerId(String.valueOf(oAuthUser.getId()))
                .memberName(oAuthUser.getNickname())
                .profileImage(oAuthUser.getProfileImage())
                .email(oAuthUser.getEmail())
                .build();
    }


}
