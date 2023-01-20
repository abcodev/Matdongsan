package com.project;

import com.project.realestate.service.RealEstateService;
import lombok.extern.log4j.Log4j;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@Log4j
public class MainController {

    private final RealEstateService realEstateService;

    public MainController(RealEstateService realEstateService) {
        this.realEstateService = realEstateService;
    }

//    @ResponseBody
//    public ModelAndView realEstateList(){
//        List<String> sellList = realEstateService.getSellList();
//
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.addObject("sellList", sellList);
//
//        modelAndView.setViewName("common/mainPage");
//
//        return modelAndView;
//    }

    @RequestMapping(value = "/")
    public ModelAndView index(ModelAndView mv){
        mv.setViewName("index");
        return mv;
    }

    /*@RequestMapping(value = "/mainPage")
    public String mainPage() {
        return "common/mainPage";
    }*/

    @RequestMapping(value = "/mainPage")
    public String getNews(Model model) throws IOException {

        String url = "https://land.naver.com/news/region.naver?page=1";

        Document doc = Jsoup.connect(url).get();

        Elements e1 = doc.getElementsByAttributeValue("class", "section_headline");
        Element e2 = e1.get(0);

        Elements photoElements = e2.getElementsByAttributeValue("class", "photo");

        ArrayList<HashMap> newsList = new ArrayList();

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

        return "common/mainPage";
    }


}






