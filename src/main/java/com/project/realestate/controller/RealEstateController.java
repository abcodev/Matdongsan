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
//    @ResponseBody
//    public ModelAndView realEstatePage(
//            @RequestParam(value = "cpage", defaultValue = "1") int currentPage,
//            @RequestParam(value = "state", defaultValue = "강남구") String state,
//            @RequestParam(value = "dong", defaultValue = "") String dong,
//            @RequestParam Map<String, Object> paramMap
//    ) throws Exception {
//        System.out.println("검색!!!! " + state);
//        System.out.println("dong!! :" + dong);
//
//        ModelAndView mv = new ModelAndView();
//        Map<String, Object> map = new HashMap();
//
//        List<RealEstateRent> localList = realEstateService.searchLocalList(); // 자치구 리스트
//        List<RealEstateRent> dongList = realEstateService.searchDongList(state); // 해당 자치구 동 리스트
//
//        RealEstateRentListRequest req = new RealEstateRentListRequest(currentPage, state, dong);
//        RealEstateRentListResponse resp = realEstateService.selectAllList(req);
//
//        System.out.println("동 리스트: " + dongList.toString());
////        if(!paramMap.isEmpty()){
////            List<RealEstateRent> searchResult = realEstateService.searchResult();
////        }
//
//        mv.addObject("localList", localList);
//        mv.addObject("dongList", dongList);
//        mv.addObject("selectAllList", resp.getRealEstateRentList());
//        mv.addObject("pi", resp.getPageInfoCombine());
//
//        mv.setViewName("realestate/realestateList");
//
//        return mv;
//
//    }

    @RequestMapping("/list/search")
    public ModelAndView realEstatePage(
            @RequestParam(value = "cpage", defaultValue = "1") int currentPage,
            @RequestParam(value = "state", defaultValue = "강남구") String state,
            @RequestParam(value = "dong", defaultValue = "total") String dong,
            @RequestParam(value = "rentType", defaultValue ="a") String transaction,
            @RequestParam(value = "rentGtn") String fee,
            @RequestParam(value = "chooseType") String area
    ) throws Exception {
        System.out.println("검색!!!! " + state);
        System.out.println("dong!! :" + dong);

        ModelAndView mv = new ModelAndView();

        List<RealEstateRent> localList = realEstateService.searchLocalList(); // 자치구 리스트
        List<RealEstateRent> dongList = realEstateService.searchDongList(state); // 해당 자치구 동 리스트

        if(!state.isEmpty() && !dong.equals("total")){
            RealEstateRentListRequest req = new RealEstateRentListRequest(currentPage, state, dong, transaction, fee, area);
            RealEstateRentListResponse resp = realEstateService.selectAllList(req);

            mv.addObject("selectAllList", resp.getRealEstateRentList());
            mv.addObject("pi", resp.getPageInfoCombine());
        }

        mv.addObject("localList", localList);
        mv.addObject("dongList", dongList);

        mv.setViewName("realestate/realestateList");

        return mv;

    }




}
