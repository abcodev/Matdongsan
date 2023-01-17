//
//package com.project.main;
//
//import org.jsoup.Jsoup;
//import org.jsoup.nodes.Document;
//import org.jsoup.nodes.Element;
//import org.jsoup.select.Elements;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import java.io.IOException;
//
//@Controller
//public class CrawlingController {
//
//
//
////        int page = 5;
//
////        for(int i=1; i< page; i++){
//
//            String url = "https://land.naver.com/news/region.naver?city_no=1100000000&dvsn_no=1168000000";
//
//            Document doc = Jsoup.connect(url).get();
////            System.out.println(url);
//
//            Elements e1 = doc.getElementsByAttributeValue("class", "section_headline");
//            Element e2 = e1.get(0);
//
//            Elements photoElements = e2.getElementsByAttributeValue("class", "photo");
//
//            for(int i = 0; i< 4; i++){
//                Element articleElement = photoElements.get(i);
//                Elements aElements = articleElement.select("a");
//                Element aElement = aElements.get(0);
//
//                String articleUrl = aElement.attr("href"); // 기사링크
//                Element link = doc.select("a").first();
////                String articleUrl1 = link.attr("abs:href");
//
//                Element imgElement = aElement.select("img").get(0);
//                String imgUrl = imgElement.attr("src"); // 사진링크
//                String title = imgElement.attr("alt"); //기사제목
//
////                Document subDoc = Jsoup.connect(articleUrl).get();
////                Element contentElement = subDoc.getElementById("articleBodyContents");
////                String content = contentElement.text(); // 기사내용*/
//
//                System.out.println(title);
////                System.out.println(content);
//                System.out.println("https://land.naver.com"+articleUrl);
//
//            }
////            System.out.println(i+ "page 크롤링 종료");
//
//        }
//
//
//
//
//
//
//
