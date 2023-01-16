package com.project;

import lombok.extern.log4j.Log4j;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;


@Controller
@Log4j
public class MainController {

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
    public String getStockPrice(Model model) throws IOException {
        String url = "https://land.naver.com/news/region.naver?city_no=1100000000&dvsn_no=1168000000";

        Document doc = Jsoup.connect(url).get();

        Elements e1 = doc.getElementsByAttributeValue("class", "section_headline");
        Element e2 = e1.get(0);
        Elements e3 = e2.select("dd");

        String news = e3.get(0).text();
        model.addAttribute("news", news);

        Elements photoElements = e2.getElementsByAttributeValue("class", "photo");
        Element articleElement = photoElements.get(0);
        Elements aElements = articleElement.select("a");
        Element aElement = aElements.get(0);
        Element imgElement = aElement.select("img").get(0);
//        String imgUrl = imgElement.attr("src"); // 사진링크
        String title = imgElement.attr("alt"); //기사제목

        model.addAttribute("title", title);

        return "common/mainPage";
    }


}






