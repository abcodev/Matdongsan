package com.project.realestate.controller;

import com.project.member.vo.Member;
import com.project.realestate.dto.ReservationRequest;
import com.project.realestate.service.ReservationService;
import com.project.realestate.dto.ReservationBrokerDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequiredArgsConstructor
@RequestMapping("/reservation")
public class ReservationController {

    private final ReservationService reservationService;

    @PostMapping("/enroll")
    @ResponseBody
    public ResponseEntity<Void> realEstateReservation (@ModelAttribute ReservationRequest req, HttpSession session){
        Member loginUser = (Member) session.getAttribute("loginUser");
        long memberNo = loginUser.getMemberNo();
        req.setMemberNo(memberNo);
        reservationService.reservationEnroll(req);
        return ResponseEntity.ok().build();
    }

    @RequestMapping("/modal")
    @ResponseBody
    public ModelAndView selectReservation(@RequestParam(value = "revNo")int revNo){
        ModelAndView modelAndView = new ModelAndView();
        ReservationBrokerDto modalInfo = reservationService.selectReservation(revNo);
        modelAndView.addObject("selectReservation", modalInfo);
        modelAndView.setViewName("member/brokerMemberContents");
        return modelAndView;
    }

    @RequestMapping("/approve")
    @ResponseBody
    public void approveReservation(@RequestParam(value = "revNo")int revNo){
        reservationService.approveReservation(revNo);
    }

    @RequestMapping("/cancel")
    @ResponseBody
    public void cancelReservation(@RequestParam(value = "revNo")int revNo){
        reservationService.cancelReservation(revNo);
    }

    @RequestMapping("/myPage/modal")
    @ResponseBody
    public ModelAndView modalReservation(@RequestParam(value = "revNo")int revNo,
                                         ModelAndView modelAndView){
        ReservationBrokerDto modalInfo = reservationService.selectReservation(revNo);
        modelAndView.addObject("selectReservation", modalInfo);
        modelAndView.setViewName("member/reservationContents");
        return modelAndView;
    }

    @RequestMapping("/myPage/cancel")
    @ResponseBody
    public void myPageCancelReservation(@RequestParam(value = "revNo")int revNo){
        reservationService.cancelReservation(revNo);
    }

}
