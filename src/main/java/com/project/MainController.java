package com.project;

import com.google.gson.Gson;
import com.project.realestate.dto.RealEstateMainListDto;
import com.project.realestate.service.RealEstateService;
import com.project.realestate.vo.Interest;
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

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


@Controller
@RequiredArgsConstructor
@Log4j
public class MainController {

    private final RealEstateService realEstateService;

    @RequestMapping(value = "/")
    public ModelAndView index(ModelAndView mv){
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "/mainPage")
    public String mainPage(Model model
    ) throws IOException {

        String url = "https://land.naver.com/news/region.naver?page=1";

        Document doc = Jsoup.connect(url).get();

        Elements e1 = doc.getElementsByAttributeValue("class", "section_headline");
        Element e2 = e1.get(0);

        Elements photoElements = e2.getElementsByAttributeValue("class", "photo");

        ArrayList<HashMap> newsList = new ArrayList();
        List<RealEstateMainListDto> sellList = realEstateService.getSellList();

        List<Interest> mostInterest = realEstateService.getMostInterest();

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

        model.addAttribute("newsList", newsList);
        Gson gson = new Gson();
        String sellList2 = gson.toJson(sellList);
        model.addAttribute("sellList2",sellList2);

        model.addAttribute("sellList", sellList);
        model.addAttribute("mostInterest", mostInterest);

        return "common/mainPage";
    }

}






