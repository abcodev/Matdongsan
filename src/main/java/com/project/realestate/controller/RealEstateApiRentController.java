package com.project.realestate.controller;

import com.project.client.seoulApi.SeoulRentApiClient;
import com.project.realestate.service.RealEstateRentApiService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;


@Controller
@RequiredArgsConstructor
@Log4j
public class RealEstateApiRentController {

    private final RealEstateRentApiService realEstateRentApiService;

    private final SeoulRentApiClient seoulRentApiClient;

    @GetMapping("/parsingRentList")
    public void parsingSell(Model model) throws ParserConfigurationException, SAXException, IOException {

        log.info("파싱 스타트 체크");
        int result = realEstateRentApiService.getAndSave();
        log.info("파싱 정보 입력 끝");
    }

}
