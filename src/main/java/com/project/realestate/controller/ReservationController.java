package com.project.realestate.controller;

import com.project.member.vo.Member;
import com.project.realestate.dto.ReservationRequest;
import com.project.realestate.service.ReservationService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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



}
