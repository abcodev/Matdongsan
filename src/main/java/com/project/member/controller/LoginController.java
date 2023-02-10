package com.project.member.controller;

import javax.servlet.http.HttpSession;

import com.project.client.oauth.OAuthClient;
import com.project.client.oauth.service.OAuthClientService;
import com.project.member.service.MemberService;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.imgscalr.Scalr;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequiredArgsConstructor
public class LoginController {

    private final MemberService memberService;
    private final OAuthClientService oAuthClientService;

    @RequestMapping(value = "/loginPage", method = {RequestMethod.GET, RequestMethod.POST})
    public String login(@RequestParam(defaultValue = "/mainPage") String redirectUrl, HttpSession session) {
        session.setAttribute("redirectUrl", redirectUrl);
        return "member/loginPage";
    }

    /*
        LoginController ->(의존) OAuthClient(인터페이스) : 컴파일시점의 의존성
        LoginController ->(의존) NAVER_OAuthClient(구체적클래스) : 런타임시점의 의존성
        Upcasting , 다형성
     */
    @RequestMapping(value = "/login/{provider}")
    public String redirectLoginPage(HttpSession session, @PathVariable String provider) {

        OAuthClient oAuthClient = oAuthClientService.getClient(provider);
        String redirectUrl = oAuthClient.generateRedirectUrl(session);
        System.out.println("url : " + redirectUrl);
        return "redirect:" + redirectUrl; // redirectUrl 로 리다이렉션
    }

    @RequestMapping(value = "/{provider}/callback")
    public ModelAndView oauthLoginCallback(@RequestParam("code") String code,
                                           @RequestParam(value = "state", defaultValue = "") String state,
                                           @PathVariable String provider,
                                           HttpSession session
    ) {
        ModelAndView mav = new ModelAndView();
        Member loginUser = memberService.login(session, provider, code, state);

        if (loginUser.isBan()) {
            mav.addObject("errorMsg", loginUser.getBanPeriod() + " 까지 정지된 사용자입니다.");
            mav.setViewName("common/errorPage");
        } else {
            session.setAttribute("loginUser", loginUser);
            String redirectUrl = (String) session.getAttribute("redirectUrl");
            mav.setViewName("redirect:" + redirectUrl);
        }
        return mav;
    }

    @RequestMapping(value = "/logout")
    public ModelAndView logout(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        session.removeAttribute("loginUser");
        modelAndView.setViewName("redirect:/");
        return modelAndView;
    }

}


