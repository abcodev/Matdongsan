package com.project.member.vo;

import com.project.client.oauth.OAuthUser;
import com.project.member.type.MemberGrade;
import lombok.*;

import java.sql.Timestamp;
import java.time.LocalDateTime;

/*
    빌더패턴 : 객체 생성을 위한 디자인 패턴
    사용한 이유 : 인자가 너무 많을 때 생성자를 만들지 않아도 필요한 인자들만 객체를 생성할 수 있음
               인자들을 선택해서 생성자들이 여러개 나올 떄
               주로 엔티티 만들땐 빌더패턴을 많이 사용
               필드가 많을 때
 */

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
    private String status;
    private MemberGrade grade = MemberGrade.GENERAL;
    private Timestamp recentAccess = Timestamp.valueOf(LocalDateTime.now());
    private String interestState;

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
