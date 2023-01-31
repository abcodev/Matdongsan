package com.project.member.controller;

import com.project.board.service.FreeBoardService;
import com.project.common.type.StateList;
import com.project.member.dto.MemberDto;
import com.project.member.service.MemberService;
import com.project.member.vo.Member;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class MemberController {

    private final MemberService memberService;

    public MemberController(MemberService memberService) {
        this.memberService = memberService;
    }

    @RequestMapping(value = "/myPage")
    public String myPage(){return "member/myPage";}

    @RequestMapping(value = "/memberModify")
    public String memberModify(Model model){

        model.addAttribute("stateList", StateList.values());

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
            session.setAttribute("alertMsg","회원정보 수정 성공");
            return "redirect:/myPage";
        } else {
            model.addAttribute("errorMsg", "회원정보 수정 실패");
            return "common/errorPage";
        }
    }

    /**
     * 휴대폰 인증
     */
    @RequestMapping(value = "/phoneCheck", method = RequestMethod.GET)
    @ResponseBody
    public String sendSMS(@RequestParam("phone") String userPhoneNumber) {
        int randomNumber = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);
        memberService.certifiedPhoneNumber(userPhoneNumber,randomNumber);
        return Integer.toString(randomNumber);
    }

}
