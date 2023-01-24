package com.project.realestate.controller;

import com.project.realestate.dto.RealEstateRentListRequest;
import com.project.realestate.dto.RealEstateRentListResponse;
import com.project.realestate.service.RealEstateService;
import com.project.realestate.vo.RealEstateRent;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

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

    @RequestMapping("/list")
    public String realEstatePage(
            Model model,
            @RequestParam(value = "cpage", defaultValue = "1") int currentPage,
            @RequestParam(value = "state", defaultValue = "강남구") String state,
            @RequestParam(value = "dong", defaultValue = "") String dong
    ) throws Exception {
        System.out.println("검색!!!! " + state);

        List<RealEstateRent> localList = realEstateService.searchLocalList(); // 자치구 리스트
        List<RealEstateRent> dongList = realEstateService.searchDongList(state); // 해당 자치구 동 리스트

        RealEstateRentListRequest req = new RealEstateRentListRequest(currentPage, state, dong);
        RealEstateRentListResponse resp = realEstateService.selectAllList(req);

        model.addAttribute("localList", localList);
        model.addAttribute("dongList", dongList);
        System.out.println("동 : " + dongList.toString());

        model.addAttribute("selectAllList", resp.getRealEstateRentList());
        model.addAttribute("pi", resp.getPageInfoCombine());
        return "realestate/realestateList";
    }



}
