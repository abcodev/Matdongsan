package com.project.member.controller;

import com.project.member.dto.MemberDto;
import com.project.member.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class MemberController {

    private final MemberService memberService;

    public MemberController(MemberService memberService) {
        this.memberService = memberService;
    }

    @RequestMapping(value = "/myPage")
    public String myPage() {
        return "member/myPage";
    }

    @RequestMapping(value = "/memberModify")
    public String memberModify() {
        return "member/memberModify";
    }

    /**
     * 회원정보를 수정하면 회원등급 변경
     */
    @RequestMapping(value = "/updateMember")
    public String updateMember(HttpSession session, Model model, MemberDto m) {
        int result = memberService.updateMember(m);

        if (result != 0) {
            MemberDto updateMember = memberService.loginMember(m);
            session.setAttribute("loginUser", updateMember);
            model.addAttribute("alertMsg", "회원정보 수정 완료");
            return "member/myPage";
        } else {
            model.addAttribute("errorMsg", "회원정보 수정 실패");
            return "common/errorPage";
        }
    }
}
