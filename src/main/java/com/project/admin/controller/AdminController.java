package com.project.admin.controller;

import com.project.admin.dto.*;
import com.project.admin.service.AdminService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequiredArgsConstructor
@SessionAttributes("loginUser")
@RequestMapping("/admin")
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
            return "redirect:/admin/userList";
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
            return "redirect:/admin/userList";
        }
    }

    @PostMapping(value = "/broker/handleApply")
    public ResponseEntity<String> handleApply(@RequestParam("handle") String status) {
        String a = "1";
        return ResponseEntity.ok().body(a);
    }

    // hi
}
