package com.project.common.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

/*
    RestTemplate 하는일 : 프로바이더랑 하고싶은게 http 통신인데, http 통신을 통해 AccessToken 을 발급받고 유저정보를 가져옴
    http 통신을 자동화 시키려고 라이브러리를 사용하는데 이게 RestTemplate(목적: 통신을 하기위한 라이브러리)

    심플한 요청 보낼때 PostForObject 를 사용하는데 파싱 결과값이 제이슨 형태로 내려줌
    json 형태의 문자열로는 뭘 할수가 없으니까 객체로 만들어야함 -> 이걸 RestTemplate 하는것
                                                    RestTemplate.postForObject 안에 과정이 있음
                                                    객체로 만들어서 response 객체 에 담아줌
                                                    즉, 프로바이더에서 내려주는 모양을 담을 수 있게 만들어주는것.

    RestTemplateConfig 를 만든 이유 -> 객체의 생명주기와 관리를 프레임워크에 맡기겠다.

    @RestTemplate 은 직접 만든 클래스가 아니니까 수정하거나 할수는 없고, 객체는 필요하니까 빈으로서 만들기 위해서
    결합도가 높아지니까 클래스를 따로 빼준것 / 객체 생성과 관리를 외부에 두었음(ioc)

 */
@Configuration
public class RestTemplateConfig {

    @Bean
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }

}
