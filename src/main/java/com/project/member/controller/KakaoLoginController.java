package com.project.member.controller;

import com.project.member.service.MemberService;
import com.project.member.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@RestController
public class KakaoLoginController {

    KakaoAPI kakaoApi = new KakaoAPI();

    private final MemberService memberService;

    @Autowired
    public KakaoLoginController(MemberService memberService) {
        this.memberService = memberService;
    }

    @RequestMapping(value="/login")
    public ModelAndView login(@RequestParam("code") String code, HttpSession session) {
        ModelAndView mav = new ModelAndView();
        Member loginUser = memberService.login(code);

        System.out.println("login info : " + loginUser.getProfileImage());
        session.setAttribute("loginUser", loginUser);
//        mav.setViewName("redirect:/");
        mav.setViewName("common/mainPage");
        return mav;
    }

    @RequestMapping(value="/logout")
    public ModelAndView logout(HttpSession session) {
        ModelAndView mav = new ModelAndView();
        session.removeAttribute("loginUser");
        mav.setViewName("redirect:/");
        return mav;
    }



}
