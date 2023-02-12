package com.project.common.vo;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

@Getter
@RequiredArgsConstructor
@Component
public class ApiKey {
    public String SeoulApiSell;
    public String SeoulApiRent;
    public String KakaoLogin;
    public String NaverLogin;
    public String GoogleLogin;
    public String KakaoMapKeyMain;
    public String KakaoMapKeyPage;
    public String PhoneNumber;

}
