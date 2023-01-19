package com.project.restaurant.controller;

import com.google.gson.Gson;
import com.project.member.vo.Member;
import com.project.restaurant.dto.RestaurantListRequest;
import com.project.restaurant.dto.RestaurantListResponse;
import com.project.restaurant.service.RestaurantCrawlingService;
import com.project.restaurant.service.RestaurantService;
import com.project.restaurant.type.SearchState;
import com.project.restaurant.vo.Restaurant;
import com.project.restaurant.vo.Review;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequiredArgsConstructor
@Log4j
public class RestaurantController {

    private final RestaurantService restaurantService;
    private final RestaurantCrawlingService restaurantCrawlingService;



    /**
     * 동네맛집 리스트
     */
    @RequestMapping("/selectResList")
    public ModelAndView restaurantList() {
        List<String> stateList = restaurantService.selectStateList();
        List<String> hashtagList = restaurantService.selectHashtagList();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("stateList", stateList);
        modelAndView.addObject("hashtagList", hashtagList);

        modelAndView.setViewName("restaurant/restaurantList");
        return modelAndView;
    }

    /**
     * 동네맛집 리스트
     */
    @RequestMapping("/restaurants")
    public ModelAndView selectResList(
            @RequestParam(value = "cpage", defaultValue = "1") int currentPage,
            @RequestParam(value = "state", defaultValue = "") String state,
            @RequestParam(value = "hashtag", defaultValue = "") List<String> hashtags
    ) {
        RestaurantListRequest req = new RestaurantListRequest(currentPage, state, hashtags);
        RestaurantListResponse resp = restaurantService.selectList(req);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("selectResList", resp.getRestaurantList());
        modelAndView.addObject("pi", resp.getPageInfoCombine());
        modelAndView.setViewName("restaurant/restaurantContents");
        return modelAndView;
    }

    /**
     * 목록 이미지 크롤링
     */
    @ResponseBody
    @RequestMapping("/restaurant/image/{name}")
    public String find(@PathVariable String name) {
        return restaurantCrawlingService.findImage(name);
    }


    /**
     * 동네맛집 상세보기
     */
    @RequestMapping("/restaurantDetail")
    public ModelAndView restaurantDetail(
            @RequestParam("resNo") String resNo,
            Model model) {
        ModelAndView modelAndView = new ModelAndView();

        Restaurant restaurant = restaurantService.restaurantDetail(resNo);

        List<String> resHashtagByAdmin = restaurantService.resHashtagByAdmin();
        List<String> hashtagList = restaurantService.selectHashtagList();

        modelAndView.addObject("resHashtagByAdmin", resHashtagByAdmin);
        modelAndView.addObject("hashtagList", hashtagList);
        modelAndView.addObject("restaurantDetail", restaurant);

        modelAndView.setViewName("restaurant/restaurantDetail");

        return modelAndView;
    }



//    @RequestMapping("selectReview")
//    @ResponseBody
//    public String selectReviewList(int resNo, Model model) {
//        ArrayList<Review> list = restaurantService.selectReviewList(resNo);
//        Gson gson = new Gson();
//        String result = gson.toJson(list);
//        return result;
//    }
//
//    // 댓글 작성
//    @RequestMapping("insertReview")
//    @ResponseBody
//    public int insertReply(Review review, HttpSession session) {
//        String userNo = Integer.toString((int) ((Member)session.getAttribute("loginUser")).getMemberNo());
//        review.setMemberNo(review.getMemberNo());
//        int result = restaurantService.insertReview(review);
//        return result;
//    }
//








    @RequestMapping("/admin/resEnroll")
    public ModelAndView restaurantEnroll() {
        List<String> hashtagList = restaurantService.selectHashtagList();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hashtagList", hashtagList);
        modelAndView.setViewName("admin/restaurantEnroll");
        return modelAndView;
    }

    @PostMapping("/admin/resInsert")
    public String restaurantInsert(@RequestParam("file")MultipartFile file,
                                   Restaurant restaurant,
                                   HttpServletRequest session,
                                   RedirectAttributes redirectAttributes){

        restaurantService.restaurantInsert(file,restaurant,session);

        redirectAttributes.addFlashAttribute("message",
                "You successfully uploaded " + restaurant.getResName() + "!");

        return "redirect:/";
    }

}
