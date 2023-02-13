package com.project.common.scheduling;

import com.project.realestate.service.RealEstateApiService;

import com.project.realestate.service.RealEstateRentApiService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.stereotype.Component;


@EnableScheduling
@Log4j
@RequiredArgsConstructor
@Component
public class RealEstateApiScheduling {

    private final RealEstateApiService realEstateApiService;

    private final RealEstateRentApiService realEstateRentApiService;


//    @Scheduled(cron="0/60 * * * * ?")
    public void parsingSell() {
        log.info("파싱 스타트 체크");
        int result = realEstateApiService.retrieveAndSave();
        log.info("파싱 정보 입력 끝");
    }

//    @Scheduled(cron="0/60 * * * * ?")
    public void parsingRent() {

        log.info("파싱 스타트 체크");
        int result = realEstateRentApiService.getAndSave();
        log.info("파싱 정보 입력 끝");
    }

}

// TODO: 스케줄러 실행시켜야함