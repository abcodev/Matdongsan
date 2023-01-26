package com.project.realestate.controller;

import com.project.realestate.dto.RealEstateRentListRequest;
import com.project.realestate.dto.RealEstateRentListResponse;
import com.project.realestate.service.RealEstateService;
import com.project.realestate.vo.RealEstateRent;
import com.project.restaurant.vo.Hashtag;
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
@RequestMapping("/realEstate")
public class RealEstateController {

    private final RealEstateService realEstateService;

    public RealEstateController(RealEstateService realEstateService) {
        this.realEstateService = realEstateService;
    }


//    @RequestMapping("/list")
//    public String realEstatePage(
//            Model model,
//            @RequestParam(value = "cpage", defaultValue = "1") int currentPage,
//            @RequestParam(value = "state", defaultValue = "") String state,
//            @RequestParam(value = "dong", defaultValue = "") String dong
//    ) throws Exception {
//        System.out.println("검색!!!! " + state);
//        List<RealEstateRent> localList = realEstateService.searchLocalList();
//
//
//        RealEstateRentListRequest req = new RealEstateRentListRequest(currentPage, state, dong);
//        RealEstateRentListResponse resp = realEstateService.selectAllList(req);
//
//        model.addAttribute("localList", localList);
//
//
//        List<RealEstateRent> dongList = realEstateService.searchDongList(state);
//        model.addAttribute("dongList", dongList);
//
//        System.out.println(state + "동이름 : " + dongList);
//
//        model.addAttribute("selectAllList", resp.getRealEstateRentList());
//        model.addAttribute("pi", resp.getPageInfoCombine());
//        return "realestate/realestateList";
//    }

    @RequestMapping
    public String realEstatePage(Model model) {
        List<RealEstateRent> localList = realEstateService.searchLocalList(); // 자치구 리스트
        model.addAttribute("localList", localList);
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
}
