package com.project.realestate.controller;

import com.project.realestate.dto.RealEstateMainListDto;
import com.project.realestate.dto.RealEstateRentListRequest;
import com.project.realestate.dto.RealEstateRentListResponse;
import com.project.realestate.service.RealEstateService;
import com.project.realestate.vo.RealEstateRent;
import com.project.restaurant.vo.Hashtag;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
@RequestMapping("/realEstate")
public class RealEstateController {

    private final RealEstateService realEstateService;

        @RequestMapping
        public String realEstatePage(Model model) {
            List<RealEstateRent> localList = realEstateService.searchLocalList(); // 자치구 리스트
            List<RealEstateMainListDto> sellList = realEstateService.getSellList(); // 실거래가 주소

            model.addAttribute("localList", localList);
            model.addAttribute("sellList", sellList);

        return "realestate/realestateList";
    }

    @RequestMapping("/list")
    @ResponseBody
    public ModelAndView realEstateList(
            @RequestParam(value = "cpage", defaultValue = "1") int currentPage,
            @RequestParam(value = "state", defaultValue = "") String state,
            @RequestParam(value = "dong", defaultValue = "") String dong,
            @RequestParam(value = "rentType", defaultValue = "") String rentType,
            @RequestParam(value = "rentGtn", defaultValue = "") String rentGtn,
            @RequestParam(value = "chooseType", defaultValue = "") String chooseType
    ) {
        RealEstateRentListRequest req = new RealEstateRentListRequest(currentPage, state, dong, rentType, rentGtn, chooseType);
        RealEstateRentListResponse resp = realEstateService.selectAllList(req);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("estateRentList", resp.getRealEstateRentList());
        modelAndView.addObject("pi", resp.getPageInfoCombine());
        modelAndView.setViewName("realestate/realestateContents");
        return modelAndView;
    }


    @RequestMapping("/list/state")
    @ResponseBody
    public ResponseEntity<List<String>> realEstateDong(@RequestParam String state) {
        return ResponseEntity.ok(
                realEstateService.searchDongList(state).stream()
                        .map(RealEstateRent::getBjdName)
                        .collect(Collectors.toList())
        );
    }
    // state를 매개변수로 전달하여 realEstateService 오브젝트에서 searchDongList 메소드를 호출하고
    // 반환된 RealEstateRent 목록은 해당 bjdName 속성에 맵핑되고 새 목록으로 수집함
    // HTTP OK(200) 응답을 bjdName 속성 목록을 반환
}
