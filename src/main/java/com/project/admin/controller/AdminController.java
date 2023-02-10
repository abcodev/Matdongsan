package com.project.admin.controller;

import com.project.admin.dto.AdminListRequest;
import com.project.admin.dto.AdminListResponse;
import com.project.admin.dto.ReportListResponse;
import com.project.admin.service.AdminService;
import com.project.admin.vo.Admin;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequiredArgsConstructor
@SessionAttributes("loginUser")
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    AdminService adminService;
    @RequestMapping(value = "/userList/{fNo}")
    public ModelAndView selectUserList(
            @RequestParam(value = "cpage",required = false,defaultValue ="1") int currentPage,
            @PathVariable("fNo") int fNo,
            ModelAndView mv

           ){
        AdminListRequest aeq = new AdminListRequest(currentPage);
        AdminListResponse aesp = adminService.selectUserList(aeq);

        mv.addObject("userList", aesp.getMemberList());
        mv.addObject("pi", aesp.getPageInfoCombine());
        mv.setViewName("admin/userList");
        return mv;
    }

    @RequestMapping(value = "/reportList/{fNo}")
    public ModelAndView selectReportList(
            @RequestParam(value = "cpage",required = false,defaultValue ="1") int currentPage,
            ModelAndView mv,
            @PathVariable("fNo") int fNo

            ){
        AdminListRequest req = new AdminListRequest(currentPage);
        ReportListResponse resp = adminService.selectReportList(req,fNo);

        mv.addObject("reportList", resp.getReportList());
        mv.addObject("pi", resp.getPageInfoCombine());
        mv.addObject("fNo",fNo);
        mv.setViewName("admin/reportList");
        return mv;
    }

    @RequestMapping(value = "/deleteQna/{fNo}")
    public String deleteQna(@PathVariable("fNo") int fNo) {

        int result = adminService.deleteQna(fNo);
        if(result == 0){
            return "common/errorPage";
        }else {
            return "redirect:/admin/userList/{fNo}";
        }

    }

    @RequestMapping(value = "/deleteFree/{fNo}")
    public String deleteFree(
            @PathVariable("fNo") int fNo
    ){
        int result = adminService.deleteFree(fNo);
        if(result == 0){
            return "common/errorPage";
        }else {
            return "redirect:/admin/userList/{fNo}";
        }
    }


}
