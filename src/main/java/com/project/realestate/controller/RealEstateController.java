package com.project.realestate.controller;

import com.project.realestate.dto.RealEstateDetailDto;
import com.project.realestate.dto.RealEstateMainListDto;
import com.project.realestate.dto.RealEstateRentListRequest;
import com.project.realestate.dto.RealEstateRentListResponse;
import com.project.realestate.service.RealEstateService;
import com.project.realestate.vo.RealEstateRent;
import com.project.common.type.StateList;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
@RequestMapping("/realEstate")
public class RealEstateController {

    private final RealEstateService realEstateService;

    @RequestMapping
    public String realEstatePage(Model model) {
        // List<RealEstateRent> localList = realEstateService.searchLocalList(); // 자치구 리스트
        List<RealEstateMainListDto> sellList = realEstateService.getSellList(); // 실거래가 주소

        model.addAttribute("localList", StateList.values());
        model.addAttribute("sellList", sellList);

        return "realestate/realestateList";
    }

    @RequestMapping("/list")
    @ResponseBody
    public ModelAndView realEstateList(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
                                       @RequestParam(value = "state", defaultValue = "") String state,
                                       @RequestParam(value = "dong", defaultValue = "") String dong,
                                       @RequestParam(value = "rentType", defaultValue = "") String rentType,
                                       @RequestParam(value = "rentGtn", defaultValue = "") String rentGtn,
                                       @RequestParam(value = "chooseType", defaultValue = "") String chooseType) {

        RealEstateRentListRequest req = new RealEstateRentListRequest(currentPage, state, dong, rentType, rentGtn, chooseType);
        RealEstateRentListResponse resp = realEstateService.selectAllList(req);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("estateRentList", resp.getRealEstateRentList());
        modelAndView.addObject("pi", resp.getPageInfoCombine());
        modelAndView.setViewName("realestate/realestateContents");
        return modelAndView;
    }


    @RequestMapping("/list/state")
    @ResponseBody // 데이터를 HttpMessageConverter를 사용해 응답 본문 메시지로 보낼 때
    public ResponseEntity<List<String>> realEstateDong(@RequestParam String state) {
        // ResponseEntity : HttpRequest에 대한 응답 데이터가 담겨있음
        // 목적: 결과값, 상태코드, 헤더값 등을 클라이언트단에 넘겨주기 위함, 응답 상태코드를 직접 담고싶을떄 사용
        return ResponseEntity.ok( // HTTP OK(200) 응답을 bjdName 목록을 반환
                realEstateService.searchDongList(state).stream()
                        .map(RealEstateRent::getBjdName)
                        .collect(Collectors.toList())
        );
    }


    @RequestMapping("/detail")
    public ModelAndView realEstateDetail(@RequestParam("estateNo") String estateNo,
                                         ModelAndView modelAndView) {

        RealEstateDetailDto realEstateDetailDto = realEstateService.realEstateDetail(estateNo);
        modelAndView.setViewName("realestate/realEstateDetailPage");
        return modelAndView;
    }

}
