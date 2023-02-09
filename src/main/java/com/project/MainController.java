package com.project;

import com.project.member.vo.Member;
import com.google.gson.Gson;
import com.project.realestate.dto.RealEstateDetailDto;
import com.project.realestate.dto.RealEstateMainListDto;
import com.project.realestate.dto.RealEstateViewDto;
import com.project.realestate.service.RealEstateService;
import com.project.redis.recentrealestate.RecentRealEstateRedisService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;


@Controller
@RequiredArgsConstructor
@Log4j
public class MainController {

    private final RealEstateService realEstateService;
    private final RecentRealEstateRedisService recentRealEstateRedisService;

    @RequestMapping(value = "/")
    public ModelAndView index(ModelAndView mv) {
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "/mainPage")
    public String mainPage(Model model, HttpSession session) throws IOException {
        String url = "https://land.naver.com/news/region.naver?page=1";
        Document doc = Jsoup.connect(url).get();

        Elements e1 = doc.getElementsByAttributeValue("class", "section_headline");
        Element e2 = e1.get(0);

        Elements photoElements = e2.getElementsByAttributeValue("class", "photo");

        ArrayList<HashMap> newsList = new ArrayList();
        List<RealEstateMainListDto> sellList = realEstateService.getSellList();

        for (int i = 0; i < 4; i++) {
            Element articleElement = photoElements.get(i);
            Elements aElements = articleElement.select("a");
            Element aElement = aElements.get(0);

            String articleUrl = "https://land.naver.com" + aElement.attr("href"); // 기사링크

            Element imgElement = aElement.select("img").get(0);
            String title = imgElement.attr("alt"); //기사제목

            HashMap<String, String> newsInfo = new HashMap<>();

            newsInfo.put("newsTitle", title);
            newsInfo.put("newsUrl", articleUrl);
            newsList.add(newsInfo);
        }

        Member loginUser = (Member) session.getAttribute("loginUser");
        if (loginUser != null) {
            List<String> recentEstateNoList = recentRealEstateRedisService.findTopN(loginUser.getMemberNo(), 5);
            // 3, 2, 1, 4, 5
            List<RealEstateViewDto> recentViewList = realEstateService.selectViewListIn(recentEstateNoList);
            // 1, 2, 3, 4, 5
            model.addAttribute("recentViewList", recentViewList);
            model.addAttribute("interestViewList", Collections.emptyList());
        } else {
            List<String> interestEstateNoList = List.of("30001", "30002");
            List<RealEstateViewDto> interestViewList = realEstateService.selectViewListIn(interestEstateNoList);
            model.addAttribute("recentViewList", Collections.emptyList());
            model.addAttribute("interestViewList", interestViewList);
        }

        model.addAttribute("newsList", newsList);
        Gson gson = new Gson();
        String sellList2 = gson.toJson(sellList);

        model.addAttribute("sellList2",sellList2);
//        model.addAttribute("sellList", sellList);

        return "common/mainPage";
    }

}






