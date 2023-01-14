/*

package com.project.main;

import org.springframework.ui.Model;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

public class CrawlingController {
    public static HashMap<String, String> map;

    public String startCrawl(Model model) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy.MM.dd", Locale.KOREA);
        Date currentTime = new Date();

        String dTime = formatter.format(currentTime);
        String e_date = dTime;

        currentTime.setDate(currentTime.getDate() -1);
        String s_date = formatter.format(currentTime);

        String query = "";
        String s_from = s_date.replace(".", "");
        String e_to = e_date.replace(".", "");

        int page = 1;
        ArrayList<String> list1 = new ArrayList<>();
        ArrayList<String> list2 = new ArrayList<>();

        while (page < 20){
            String address =
        }

    }
}

*/
