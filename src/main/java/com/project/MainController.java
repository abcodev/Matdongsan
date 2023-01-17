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
import java.util.ArrayList;
import java.util.List;


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

        Elements photoElements = e2.getElementsByAttributeValue("class", "photo");

        ArrayList<String> newsTitle = null;
        ArrayList<String> newsUrl= null;

        for(int i = 0; i< 4; i++){
            Element articleElement = photoElements.get(i);
            Elements aElements = articleElement.select("a");
            Element aElement = aElements.get(0);

            String articleUrl = "https://land.naver.com"+aElement.attr("href"); // 기사링크
            Element link = doc.select("a").first();


            Element imgElement = aElement.select("img").get(0);
//            String imgUrl = imgElement.attr("src"); // 사진링크
            String title = imgElement.attr("alt"); //기사제목

            System.out.println(title);
            System.out.println(articleUrl);

            newsTitle.add(title);
            newsUrl.add(articleUrl);
        }

        model.addAttribute("newsTitle", newsTitle.get(0));
        model.addAttribute("newsUrl", newsUrl.get(0));

        return "common/mainPage";
    }


}






