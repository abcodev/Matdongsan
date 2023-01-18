package com.project.restaurant.service;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.io.IOException;

@Service
public class RestaurantCrawlingService {

    public String findImage(String restaurantName) {
        String URL = "https://www.mangoplate.com/search/" + restaurantName;
        try {
            Document doc = Jsoup.connect(URL).get();
            Element elem = doc.select(".thumb > img").get(0);
            return elem.attr("data-original");
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (Exception ignored) {
            return "https://cdn-icons-png.flaticon.com/512/3875/3875433.png";
        }
    }

}
