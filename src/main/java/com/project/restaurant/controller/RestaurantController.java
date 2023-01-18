package com.project.restaurant.controller;

import com.project.restaurant.dto.RestaurantListRequest;
import com.project.restaurant.dto.RestaurantListResponse;
import com.project.restaurant.service.RestaurantCrawlingService;
import com.project.restaurant.service.RestaurantService;
import com.project.restaurant.type.SearchState;
import com.project.restaurant.vo.Restaurant;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequiredArgsConstructor
@Log4j
public class RestaurantController {

    private final RestaurantService restaurantService;
    private final RestaurantCrawlingService restaurantCrawlingService;

    @RequestMapping("/selectResList")
    public ModelAndView restaurantList() {
        List<String> stateList = restaurantService.selectStateList();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("stateList", stateList);
        modelAndView.setViewName("restaurant/restaurantList");
        return modelAndView;
    }

    /**
     * 동네맛집 리스트
     */
    @ResponseBody
    @RequestMapping("/restaurants")
    public ResponseEntity<RestaurantListResponse> selectResList(
            @RequestParam(value = "cpage", defaultValue = "1") int currentPage,
            @RequestParam(value = "state", defaultValue = "") String state,
            @RequestParam(value = "hashtag", defaultValue = "") List<String> hashtags
    ) {
        // TODO : 하드코딩된걸 JSP에서 넘어온 값으로 대체하기
        state = "강남구";
        hashtags = List.of();

        RestaurantListRequest req = new RestaurantListRequest(currentPage, state, hashtags);
        RestaurantListResponse resp = restaurantService.selectList(req);
        // HTTP Status 중에서 200(OK) -> ResponseBody 에 담음
        // ResponseEntity 는 Spring REST API 에서 응답을 내릴 때 주로사용하는 객체
        // Rest API에서 내려야하는 기본적인 형태를 쉽게만들 수 있음
        return ResponseEntity.ok(resp);
    }

    @ResponseBody
    @RequestMapping("/restaurant/image/{name}")
    public String find(@PathVariable String name) {
        return restaurantCrawlingService.findImage(name);
    }


    /**
     * 동네맛집 상세보기
     */
    @RequestMapping("/restaurantDetail")
    public String restaurantDetail(@RequestParam("resNo") String resNo, Model model) {
        Restaurant restaurant = restaurantService.restaurantDetail(resNo);
        model.addAttribute("restaurantDetail", restaurant);

        return "restaurant/restaurantDetailPage";
    }





}
