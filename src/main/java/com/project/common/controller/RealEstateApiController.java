package com.project.common.controller;

import com.project.client.seoulApi.SeoulApiClient;
import com.project.common.service.RealEstateApiService;
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
public class RealEstateApiController {

    private final RealEstateApiService realEstateApiService;
    private final SeoulApiClient seoulApiClient;

    @GetMapping("/parsingSellList")
    public void parsingSell(Model model) throws ParserConfigurationException, SAXException, IOException {

        log.info("파싱 스타트 체크");
        int result = realEstateApiService.retrieveAndSave();

        log.info("파싱 정보 입력 끝");
    }

}
