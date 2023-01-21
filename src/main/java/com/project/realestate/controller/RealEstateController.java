package com.project.realestate.controller;

import com.project.realestate.dto.RealEstateRentListRequest;
import com.project.realestate.dto.RealEstateRentListResponse;
import com.project.realestate.service.RealEstateService;
import com.project.realestate.vo.RealEstateRent;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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


    @RequestMapping("/list")
    public String realEstatePage(
            Model model,
            @RequestParam(value = "cpage", defaultValue = "1") int currentPage,
            @RequestParam(value = "state", defaultValue = "") String state,
            @RequestParam(value = "dong", defaultValue = "") String dong
    ) throws Exception {
        System.out.println("검색!!!! " + state);
        List<RealEstateRent> localList = realEstateService.searchLocalList();



        RealEstateRentListRequest req = new RealEstateRentListRequest(currentPage, state, dong);
        RealEstateRentListResponse resp = realEstateService.selectAllList(req);






        model.addAttribute("localList", localList);




        model.addAttribute("selectAllList", resp.getRealEstateRentList());
        model.addAttribute("pi", resp.getPageInfoCombine());
        return "realestate/realestateList";
    }








//    @RequestMapping("/list")
//    public String realEstatePage(Model model, @RequestParam(value="currentPage",defaultValue="1")int currentPage,
//                                 @RequestParam Map<String, Object> paramMap) {
//        Map<String, Object> map = new HashMap();
//        List<RealEstateRent> localList = new ArrayList<>();
//
//        //select 자치구 옵션 받아오기
//        // List<String> optionList = new ArrayList();
//
//        if (paramMap.get("selectOption1") == null) { // 검색 요청을 하지 않은 경우
//
//            map = realEstateService.selectList(currentPage);
//            localList = realEstateService.searchLocalList();
//
//        } else { // 검색 요청을 한 경우
//            // 검색에 필요한 데이터를 paramMap을 넣어서 호출
//            // condition, keyword
//            paramMap.put("currentPage", currentPage);
//
//            // 2. 게시글 셀렉트
//            map = realEstateService.selectList(paramMap);
//        }
//
//        //3. 페이징 포워딩(pi 객체와 list 객체 저장시키면서)
//        model.addAttribute("map", map);
//        model.addAttribute("localList", localList);
//        // model.addAttribute("optionList", optionList);
//
//        return "realestate/realestateList";
//    }


//    @RequestMapping("/list/{local}")
//    public String realEstatePage(Model model, @RequestParam(value="currentPage",defaultValue="1")int currentPage,
//                                 @RequestParam Map<String, Object> paramMap,
//                                 @PathVariable String local) {
//        Map<String, Object> map = new HashMap();
//        List<RealEstateRent> localList = new ArrayList<>();
//
//        //select dong 옵션 받아오기
//        List<String> optionList = new ArrayList();
//
//        if (paramMap.get("selectOption1") == null) { // 검색 요청을 하지 않은 경우
//
//            map = realEstateService.selectList(currentPage);
//            localList = realEstateService.searchLocalList();
//           // optionList = realEstateService.selectDong(local);
//
//        } else { // 검색 요청을 한 경우
//            // 검색에 필요한 데이터를 paramMap을 넣어서 호출
//            // condition, keyword
//            paramMap.put("currentPage", currentPage);
//
//            // 2. 게시글 셀렉트
//            map = realEstateService.selectList(paramMap);
//        }
//
//        //3. 페이징 포워딩(pi 객체와 list 객체 저장시키면서)
//        model.addAttribute("map", map);
//        model.addAttribute("localList", localList);
//        model.addAttribute("optionList", optionList);
//
//        return "realestate/realestateList";
//    }


}
