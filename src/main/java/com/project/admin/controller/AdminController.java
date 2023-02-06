package com.project.admin.controller;

import com.project.admin.service.AdminService;
import com.project.admin.vo.Admin;
import com.project.board.vo.FreeBoard;
import com.project.board.vo.Report;
import com.project.member.vo.Member;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    AdminService adminService;
    @RequestMapping(value = "/userList/{fNo}")
    public String userList(
            @RequestParam(value = "cpage",required = false,defaultValue ="1") int currentPage,
            @RequestParam Map<String, Object> paramMap,
            @PathVariable("fNo") int fNo,
            Model model,
            Admin ad

           ){
        Map<String, Object> map = new HashMap();

        map = adminService.userList(currentPage);
        paramMap.put("cpage", currentPage);


        model.addAttribute("map",map);
        model.addAttribute("ad",ad);


        return "admin/userList";

    }

    @RequestMapping(value = "/reportList/{fNo}")
    public ModelAndView reportList(
            Admin ad,
            ModelAndView mv,
            @PathVariable("fNo") int fNo

            ){
        ArrayList<Admin> list2 = adminService.reportList(fNo);
        ad.setReportType(ad.getReportType());
        int listCount = adminService.rListCount();
        mv.addObject("list2",list2);
        mv.addObject("fNo",fNo);
        mv.addObject("ad",ad);
        mv.setViewName("admin/reportList");
        return mv;

    }

    @RequestMapping(value = "/deleteQna/{fNo}")
    public String deleteQna(
            @PathVariable("fNo") int fNo
    ){
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
