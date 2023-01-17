package com.project.realestate.controller;

import com.project.realestate.service.RealEstateService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/realEstate")
public class RealEstateController {

    private RealEstateService realEstateService;

    public RealEstateController(RealEstateService realEstateService){
        this.realEstateService = realEstateService;
    }

    @RequestMapping("/list")
    public String realEstatePage(Model model, @RequestParam(value="currentPage",defaultValue="1")int currentPage,
                                 @RequestParam Map<String, Object> paramMap){
        Map<String, Object> map = new HashMap();

        if(paramMap.get("condition") == null) { // 검색 요청을 하지 않은 경우

            map = realEstateService.selectList(currentPage);

        }else { // 검색 요청을 한 경우
            // 검색에 필요한 데이터를 paramMap을 넣어서 호출
            // condition, keyword
            paramMap.put("currentPage", currentPage);

            // 2. 게시글 셀렉트
            map = realEstateService.selectList(paramMap);
        }

        //3. 페이징 포워딩(pi 객체와 list 객체 저장시키면서)
        model.addAttribute("map",map);

        return "realestate/realestateList";
    }


}
