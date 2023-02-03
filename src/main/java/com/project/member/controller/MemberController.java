package com.project.member.controller;

import com.project.board.dto.FreeBoardResponse;
import com.project.board.dto.QnaBoardResponse;
import com.project.board.service.FreeBoardService;
import com.project.board.vo.FreeBoard;
import com.project.board.vo.QnaBoard;
import com.project.common.type.StateList;
import com.project.member.dto.MemberResponseDto;
import com.project.member.service.MemberService;
import com.project.member.vo.Member;
import com.project.realestate.vo.Interest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    @RequestMapping(value = "/myPage")
    public String myPage(HttpSession session, Model model){

        Member m = (Member) session.getAttribute("loginUser");

        ArrayList<FreeBoardResponse> freeBoardList = memberService.getFreeBoardList(m);
        if(freeBoardList != null){
            model.addAttribute("freeBoardList", freeBoardList);
        }

        ArrayList<QnaBoardResponse> qnaBoardList = memberService.getQnaBoardList(m);
        if(qnaBoardList != null){
            model.addAttribute("qnaBoardList", qnaBoardList);
        }

        ArrayList<Interest> interestList = memberService.getInterestList(m);
        if(interestList != null){
            model.addAttribute("interestList", interestList);
        }

        System.out.println(freeBoardList);
        System.out.println(qnaBoardList);
        System.out.println(interestList);


        return "member/myPage";
    }

    @RequestMapping(value = "/memberModify")
    public String memberModify(Model model){
        model.addAttribute("stateList", StateList.values());
        return "member/memberModify";
    }

    /**
     * 회원정보를 수정하면 회원등급 변경
     */
    @RequestMapping(value = "/updateMember")
    public String updateMember(HttpSession session, Model model, Member m) {
        int result = memberService.updateMember(m);
        if (result != 0) {
            Member updateMember = memberService.loginMember(m);

            session.setAttribute("loginUser", updateMember);
            model.addAttribute("alertMsg","회원정보 수정 성공");
            return "redirect:/myPage";
        } else {
            model.addAttribute("errorMsg", "회원정보 수정 실패");
            return "common/errorPage";
        }
    }

    /**
     * 정보수정 - 휴대폰 인증
     */
    @RequestMapping(value = "/phoneCheck", method = RequestMethod.GET)
    @ResponseBody
    public String sendSMS(@RequestParam("phone") String userPhoneNumber) {
        int randomNumber = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);
        memberService.certifiedPhoneNumber(userPhoneNumber,randomNumber);
        return Integer.toString(randomNumber);
    }

    /**
     * 회원 탈퇴
     */
    @RequestMapping(value = "/member/delete")
    @ResponseBody
    public String deleteMember(){

        return null;
    }
}
