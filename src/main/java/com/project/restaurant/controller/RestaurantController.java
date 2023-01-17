package com.project.restaurant.controller;

import com.project.restaurant.service.RestaurantService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@Log4j
public class RestaurantController {

    private final RestaurantService restaurantService;

    @RequestMapping("/restaurantList")
    public String selectResList(Model model) throws Exception {

        model.addAttribute("selectResList", restaurantService.selectResList());

        return "restaurant/restaurantList";
    }


}
