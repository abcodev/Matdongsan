package com.project.member.vo;

import com.project.client.oauth.OAuthToken;
import com.project.client.oauth.OAuthUser;
import com.project.member.type.MemberGrade;
import lombok.*;

import java.sql.Timestamp;
import java.time.LocalDateTime;

@Getter
@Setter
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
    private String addressDetail;
    private String status;
    private MemberGrade grade = MemberGrade.GENERAL;
    private Timestamp recentAccess = Timestamp.valueOf(LocalDateTime.now());
    private String accessToken;
    private String refreshToken;
    private Timestamp banPeriod;

    public static Member of(OAuthUser oAuthUser, OAuthToken oAuthToken) {
        return Member.builder()
                .provider(oAuthUser.getProvider())
                .providerId(String.valueOf(oAuthUser.getId()))
                .memberName(oAuthUser.getNickname())
                .profileImage(oAuthUser.getProfileImage())
                .email(oAuthUser.getEmail())
                .accessToken(oAuthToken.getAccessToken())
                .refreshToken(oAuthToken.getRefreshToken())
                .build();
    }

    public static Member of(Member member) {
        return Member.builder()
                .provider(member.getProvider())
                .providerId(member.getProviderId())
                .email(member.getEmail())
                .memberName(member.getMemberName())
                .profileImage(member.getProfileImage())
                .address(member.getAddress() + " " + member.getAddressDetail())
                .nickName(member.getNickName())
                .phone(member.getPhone())
                .build();
    }

    public OAuthToken toOAuthToken() {
        return new OAuthToken(this.getAccessToken(), this.getRefreshToken());
    }

    public boolean isBan() {
        return this.banPeriod != null && this.banPeriod.toLocalDateTime().isAfter(LocalDateTime.now());
    }

}
