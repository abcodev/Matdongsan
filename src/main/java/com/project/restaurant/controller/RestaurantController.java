package com.project.restaurant.controller;

import com.project.restaurant.dto.RestaurantListRequest;
import com.project.restaurant.dto.RestaurantListResponse;
import com.project.restaurant.service.RestaurantService;
import com.project.restaurant.type.SearchState;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
@Log4j
public class RestaurantController {

    private final RestaurantService restaurantService;

    /**
     * 동네맛집 리스트
     */
//    @RequestMapping("/restaurantList")
//    public String selectResList(
//            @RequestParam(value = "cpage", defaultValue = "1") int currentPage,
//            Model model
//    ) throws Exception {
//        RestaurantListResponse resp = restaurantService.selectResList(currentPage);
//        model.addAttribute("selectResList", restaurantService.selectResList());
//        model.addAttribute("pi",resp.getPageInfo());
//        return "restaurant/restaurantList";
//    }

    @RequestMapping("/selectResList")
    public String selectResList(
            @RequestParam(value = "cpage", defaultValue = "1") int currentPage,
            @RequestParam(value = "search", defaultValue = "") String search,
            @RequestParam(value = "accept", defaultValue = "") List<SearchState> searchStateList,
            @RequestParam(value = "area", defaultValue = "") String area,
            Model model
    ) throws Exception {
        // System.out.println(search);
        // System.out.println(acceptStatusList.toString());
        // System.out.println(area);

        RestaurantListRequest req = new RestaurantListRequest(currentPage, search, searchStateList, area);
        RestaurantListResponse resp = restaurantService.selectList(req);

        model.addAttribute("selectResList", resp.getRestaurantList());
        model.addAttribute("pi", resp.getPageInfo());
        return "restaurant/restaurantList";
    }






}
