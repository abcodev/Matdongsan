package com.project.member.controller;

import javax.servlet.http.HttpSession;

import com.project.client.oauth.OAuthClient;
import com.project.client.oauth.service.OAuthClientService;
import com.project.member.service.MemberService;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;





@Controller
@RequiredArgsConstructor
public class LoginController {

    /* NaverLoginBO */
    private final MemberService memberService;
    private final OAuthClientService oAuthClientService;

    /**
     * 로그인 페이지 이동
     */
    @RequestMapping(value = "/loginPage", method = { RequestMethod.GET, RequestMethod.POST })
    public String login() {
        return "member/loginPage";
    }

    @RequestMapping(value = "/login/{provider}")
    public String redirectLoginPage(HttpSession session, @PathVariable String provider) {
        // LoginController ->(의존) OAuthClient(인터페이스) : 컴파일시점의 의존성
        // LoginController ->(의존) NAVER_OAuthClient(구체적클래스) : 런타임시점의 의존성
        // Upcasting , 다형성
        OAuthClient oAuthClient = oAuthClientService.getClient(provider);
        String redirectUrl = oAuthClient.generateRedirectUrl(session);
        // redirectUrl 로 리다이렉션
        return "redirect:" + redirectUrl;
    }

    @RequestMapping(value="/{provider}/callback")
    public ModelAndView oauthLoginCallback(
            @RequestParam("code") String code,
            @RequestParam(value = "state", defaultValue = "") String state,
            @PathVariable String provider,
            HttpSession session
    ) {
        ModelAndView mav = new ModelAndView();
        Member loginUser = memberService.login(session, provider, code, state);

        System.out.println("login info : " + loginUser.getProfileImage());
        session.setAttribute("loginUser", loginUser);
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
