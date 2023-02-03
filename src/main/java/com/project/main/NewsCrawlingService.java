
package com.project.main;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;

import java.io.IOException;

@Controller
public class NewsCrawlingService {
    public static void main(String[] args) throws IOException{

        String url = "https://land.naver.com/news/region.naver?page=1";

        Document doc = Jsoup.connect(url).get();

        Elements e1 = doc.getElementsByAttributeValue("class", "section_headline");
        Element e2 = e1.get(0);

        Elements photoElements = e2.getElementsByAttributeValue("class", "photo");

//        ArrayList<String> newsTitle = new ArrayList<>();
//        ArrayList<String> newsUrl= new ArrayList<>();

        for(int i = 0; i< 4; i++){
            Element articleElement = photoElements.get(i);
            Elements aElements = articleElement.select("a");
            Element aElement = aElements.get(0);

            String articleUrl = "https://land.naver.com"+aElement.attr("href"); // 기사링크

            Element imgElement = aElement.select("img").get(0);
            String title = imgElement.attr("alt"); //기사제목

            System.out.println(title);
            System.out.println(articleUrl);

        }

    }

}
