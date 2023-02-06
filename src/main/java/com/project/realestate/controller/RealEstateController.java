package com.project.realestate.controller;

import com.google.gson.Gson;
import com.project.board.vo.FreeBoard;
import com.project.member.vo.Member;
import com.project.realestate.dto.*;
import com.project.realestate.service.RealEstateService;
import com.project.realestate.vo.RealEstateAgent;
import com.project.realestate.vo.RealEstateRent;
import com.project.common.type.StateList;
import lombok.RequiredArgsConstructor;
import org.json.simple.parser.JSONParser;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
@RequestMapping("/realEstate")
public class RealEstateController {

    // final 키워드 붙이면 컴파일 오류 찾기 쉬워짐 (생성자에서만 값을 생성할 수 있음)
    private final RealEstateService realEstateService;

    @RequestMapping
    public String realEstatePage(Model model) {
        model.addAttribute("localList",StateList.values());
        return "realestate/realestateList";
    }

    @RequestMapping("/map")
    @ResponseBody
    public String realEstateDong(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
                                       @RequestParam(value = "state", defaultValue = "") String state,
                                       @RequestParam(value = "dong", defaultValue = "") String dong,
                                       @RequestParam(value = "rentType", defaultValue = "") String rentType,
                                       @RequestParam(value = "rentGtn", defaultValue = "") String rentGtn,
                                       @RequestParam(value = "chooseType", defaultValue = "") String chooseType, Model model
    ) {

        RealEstateRentListRequest req = new RealEstateRentListRequest(currentPage, state, dong, rentType, rentGtn, chooseType);
        RealEstateRentListResponse resp = realEstateService.selectAllList(req);

        List<RealEstateRent> searchResult = resp.getRealEstateRentList();

        //1. Gson으로 형변환해주기
        Gson gson = new Gson();
        String result = gson.toJson(searchResult);

        model.addAttribute("result", result);

        return result;
    }


    @RequestMapping("/list")
    @ResponseBody
    public ModelAndView realEstateList(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
                                       @RequestParam(value = "state", defaultValue = "") String state,
                                       @RequestParam(value = "dong", defaultValue = "") String dong,
                                       @RequestParam(value = "rentType", defaultValue = "") String rentType,
                                       @RequestParam(value = "rentGtn", defaultValue = "") String rentGtn,
                                       @RequestParam(value = "chooseType", defaultValue = "") String chooseType
    ) {
        ModelAndView modelAndView = new ModelAndView();

        RealEstateRentListRequest req = new RealEstateRentListRequest(currentPage, state, dong, rentType, rentGtn, chooseType);
        RealEstateRentListResponse resp = realEstateService.selectAllList(req);
        List<FreeBoard> selectFboard = realEstateService.selectFboard(state);

        modelAndView.addObject("estateRentList", resp.getRealEstateRentList());
        modelAndView.addObject("selectFboard", selectFboard);

        System.out.println("estateRentList : " + resp.getRealEstateRentList());
        System.out.println("selectFboard : " + selectFboard);

        modelAndView.addObject("pi", resp.getPageInfoCombine());
        modelAndView.setViewName("realestate/realestateContents");
        return modelAndView;
    }


    @RequestMapping("/list/state")
    @ResponseBody // 데이터를 HttpMessageConverter 사용해서 응답 본문 메시지로 보낼 때 // responsebody 쓸땐 model 필요 없음, mvc 패턴일때만 필요
    public ResponseEntity<List<String>> realEstateDong(@RequestParam String state) {
        // ResponseEntity : HttpRequest에 대한 응답 데이터가 담겨있음, gson -> object를 json 으로 바꾸는 것, 부가적인 로직을 줄일 수 있음
        // 목적: 결과값, 상태코드, 헤더값 등을 클라이언트단에 넘겨주기 위함, 응답 상태코드를 직접 담고싶을 때
        return ResponseEntity.ok( // HTTP OK(200) 응답을 bjdName 목록을 반환함
                realEstateService.searchDongList(state).stream()
                        // :: 메서드 참조형태
                        .map(RealEstateRent::getBjdName)
                        .collect(Collectors.toList())
        );
    }

    @GetMapping("/detail")
    public ModelAndView realEstateDetail(@RequestParam("estateNo") String estateNo,
                                         ModelAndView modelAndView
    ) {
        RealEstateDetailDto realEstateDetailDto = realEstateService.realEstateDetail(estateNo);
        List<RealEstateAgent> agentList = realEstateService.selectAgentList(realEstateDetailDto.getBjdongNm());
        modelAndView.setViewName("realestate/realestateDetailPage");
        modelAndView.addObject("agentList",agentList);
        modelAndView.addObject("realEstateDetail", realEstateDetailDto);
        return modelAndView;
    }

    @GetMapping("/detail/interest")
    @ResponseBody
    public ResponseEntity<Boolean> checkInterest(@RequestParam String estateNo, HttpSession session) {
        Member loginUser = (Member) session.getAttribute("loginUser");
        if (loginUser == null) {
            throw new RuntimeException("로그인 하고 오세용");
        }
        boolean isInterest = realEstateService.checkInterest(estateNo, loginUser);
        return ResponseEntity.ok(isInterest);
    }

    @PostMapping("/detail/interest")
    @ResponseBody
    public ResponseEntity<Void> saveInterest(@RequestBody RealEstateInterestRequest req, HttpSession session) {
        Member loginUser = (Member) session.getAttribute("loginUser");
        if (loginUser == null) {
            throw new RuntimeException("로그인 하고 오세용");
        }
        realEstateService.saveInterest(req, loginUser);
        return ResponseEntity.ok().build();
    }
}
