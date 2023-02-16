package com.project.admin.controller;

import com.project.admin.dto.*;
import com.project.admin.service.AdminService;
import com.project.common.annotation.Permission;
import com.project.common.annotation.RequiredLogin;
import com.project.member.type.MemberGrade;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;


@Controller
@RequiredArgsConstructor
@SessionAttributes("loginUser")
@RequestMapping("/admin")
@RequiredLogin
@Permission(authority = MemberGrade.ADMIN)
public class AdminController {

    private final AdminService adminService;


    @RequestMapping(value = "/userList")
    public ModelAndView selectUserList(
            @RequestParam(value = "cpage", required = false, defaultValue = "1") int currentPage,
            ModelAndView mv
    ) {
        AdminListRequest aeq = new AdminListRequest(currentPage);
        AdminListResponse aesp = adminService.selectUserList(aeq);

        mv.addObject("userList", aesp.getMemberList());
        mv.addObject("pi", aesp.getPageInfoCombine());
        mv.setViewName("admin/userList");
        return mv;
    }

    @RequestMapping(value = "/reportList")
    public ModelAndView selectReportList(
            @RequestParam(value = "cpage", required = false, defaultValue = "1") int currentPage,
            ModelAndView mv
    ) {
        AdminListRequest req = new AdminListRequest(currentPage);
        ReportListResponse resp = adminService.selectReportList(req);

        mv.addObject("reportList", resp.getReportList());
        mv.addObject("pi", resp.getPageInfoCombine());
        mv.setViewName("admin/reportList");
        return mv;
    }

    @ResponseBody
    @PostMapping("/report/ban")
    public ResponseEntity<Void> ban(@RequestBody BanRequest req) {
        adminService.ban(req);
        return ResponseEntity.ok().build();
    }

    @RequestMapping(value = "/deleteQna/{fNo}")
    public String deleteQna(@PathVariable("fNo") int fNo) {
        int result = adminService.deleteQna(fNo);
        if (result == 0) {
            return "common/errorPage";
        } else {
            return "redirect:/admin/reportList";
        }
    }

    @RequestMapping(value = "/deleteFree/{fNo}")
    public String deleteFree(
            @PathVariable("fNo") int fNo
    ) {
        int result = adminService.deleteFree(fNo);
        if (result == 0) {
            return "common/errorPage";
        } else {
            return "redirect:/admin/reportList";
        }
    }

    @RequestMapping(value = "/brokerList")
    public ModelAndView BrokerList(
            @RequestParam(value = "cpage", required = false, defaultValue = "1") int currentPage,
            ModelAndView mv
    ) {

        BrokerListResponse resp = adminService.brokerList(currentPage);
        mv.addObject("brokerList", resp.getBrokerEnrollList());
        mv.addObject("pi", resp.getPageInfoCombine());
        mv.setViewName("admin/realEstateBroker");
        return mv;
    }

    @RequestMapping(value = "/broker/handleApply", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<String> handleApply(@RequestBody HandleApplyRequest req) {
        adminService.handleApply(req);

        HttpHeaders resHeaders = new HttpHeaders();
        resHeaders.add("Content-Type", "text/plain;charset=UTF-8");

        String result = "";
        if (req.getHandle().equals("consent")) {
            result = "신청 승인을 완료하였습니다.";
        } else {
            result = "신청 승인을 거절하였습니다";
        }
        return ResponseEntity.ok().headers(resHeaders).body(result);
    }


}
