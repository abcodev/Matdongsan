package com.project.restaurant.controller;

import com.project.restaurant.dto.RestaurantListRequest;
import com.project.restaurant.dto.RestaurantListResponse;
import com.project.restaurant.service.RestaurantCrawlingService;
import com.project.restaurant.service.RestaurantService;
import com.project.restaurant.service.ReviewService;
import com.project.restaurant.vo.Hashtag;
import com.project.restaurant.vo.Restaurant;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;

@Controller
@RequiredArgsConstructor
@Log4j
public class RestaurantController {

    private final RestaurantService restaurantService;
    private final ReviewService reviewService;
    private final RestaurantCrawlingService restaurantCrawlingService;


    /**
     * 동네맛집 리스트
     */
    @RequestMapping("/selectResList")
    public ModelAndView restaurantList(ModelAndView modelAndView) {
        List<String> stateList = restaurantService.selectStateList();
        List<Hashtag> hashtagList = restaurantService.selectHashtagList();

        modelAndView.addObject("stateList", stateList);
        modelAndView.addObject("hashtagList", hashtagList);

        modelAndView.setViewName("restaurant/restaurantList");
        return modelAndView;
    }

    /**
     * 동네맛집 리스트
     */
    @RequestMapping("/restaurants")
    public ModelAndView selectResList(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
                                      @RequestParam(value = "state", defaultValue = "") String state,
                                      @RequestParam(value = "hashtag", defaultValue = "") List<String> hashtags,
                                      ModelAndView modelAndView
    ) {
        RestaurantListRequest req = new RestaurantListRequest(currentPage, state, hashtags);
        RestaurantListResponse resp = restaurantService.selectList(req);

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
    public ModelAndView restaurantDetail(@RequestParam("resNo") String resNo,
                                         ModelAndView modelAndView
    ) {
        Restaurant restaurant = restaurantService.restaurantDetail(resNo);

        List<String> resHashtagByAdmin = restaurantService.resHashtagByAdmin(resNo);
        List<String> resHashtagByReview = reviewService.retrieveTop2Hashtag(resNo, resHashtagByAdmin);
        List<Hashtag> hashtagList = restaurantService.selectHashtagList();

        modelAndView.addObject("resHashtagByAdmin", resHashtagByAdmin);
        modelAndView.addObject("resHashtagByReview", resHashtagByReview);
        modelAndView.addObject("hashtagList", hashtagList);
        modelAndView.addObject("restaurantDetail", restaurant);

        modelAndView.setViewName("restaurant/restaurantDetail");

        return modelAndView;
    }


    /**
     * 관리자 - 맛집 등록
     */
    @RequestMapping("/admin/resEnroll")
    public ModelAndView restaurantEnroll() {
        List<Hashtag> hashtagList = restaurantService.selectHashtagList();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hashtagList", hashtagList);
        modelAndView.setViewName("admin/restaurantEnroll");
        return modelAndView;
    }

    @PostMapping("/admin/resInsert")
    public String restaurantInsert(@RequestParam("file") MultipartFile file,
                                   @RequestParam("hashtagId") List<String> hashtagId,
                                   Restaurant restaurant,
                                   HttpSession session,
                                   RedirectAttributes redirectAttributes,
                                   HttpServletRequest req
    ) {
        List arr = Arrays.asList(req.getParameterValues("hashtagId"));
        String resNo = restaurantService.restaurantInsert(file, restaurant, session, hashtagId);
        redirectAttributes.addFlashAttribute("message", "You successfully uploaded " + restaurant.getResName() + "!");
        return "redirect:/restaurantDetail?resNo=" + resNo;
    }




    /**
     * 관리자 - 맛집 수정
     */
    @RequestMapping("/admin/resModify")
    public ModelAndView restaurantModify(@RequestParam("resNo") String resNo,
                                         ModelAndView modelAndView
    ) {
        Restaurant restaurant = restaurantService.restaurantDetail(resNo);
        List<Hashtag> hashtagList = restaurantService.selectHashtagList();

        modelAndView.addObject("restaurantDetail", restaurant);
        modelAndView.addObject("hashtagList", hashtagList);

        modelAndView.setViewName("admin/restaurantModify");
        return modelAndView;
    }


    @PostMapping("/admin/resUpdate")
    public String restaurantModify(@RequestParam("file") MultipartFile file,
                                   @RequestParam(value = "hashtagId", defaultValue = "") List<String> hashtagId,
                                   HttpServletRequest req,
                                   Restaurant restaurant,
                                   HttpSession session
    ) {
        restaurantService.restaurantModify(file, restaurant, session, hashtagId);
        return "redirect:/restaurantDetail?resNo=" + restaurant.getResNo(); // 성공하면 해당하는 resNo url로 보내야함
    }

    /**
     * 관리자 - 맛집 삭제
     */
    @RequestMapping("/admin/resDelete")
    @ResponseBody // AJAX 호출 -> success()
    public ModelAndView restaurantDelete(@RequestParam("resNo") String resNo,
                                         ModelAndView modelAndView
    ) {
        restaurantService.deleteRes(resNo);

        modelAndView.addObject("message", "삭제 성공");
        modelAndView.setViewName("redirect:/selectResList");
        return modelAndView;
    }




}



