package com.project.restaurant.controller;

import com.project.restaurant.service.RestaurantService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RestaurantController {

    private final RestaurantService restaurantService;

    @RequestMapping("/restaurantList")
    public String selectResList(Model model) throws Exception {

        model.addAttribute("selectRestaurantList", restaurantService.selectResList());

        return "restaurant/restaurantList.jsp";
    }


}
