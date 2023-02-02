package com.project.admin.controller;

import com.project.admin.service.AdminService;
import com.project.admin.vo.Admin;
import com.project.board.vo.FreeBoard;
import com.project.member.vo.Member;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
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
    @RequestMapping(value = "/userList")
    public String userList(
            @RequestParam(value = "cpage",required = false,defaultValue ="1") int currentPage,
            @RequestParam Map<String, Object> paramMap,
            Model model

           ){
        Map<String, Object> map = new HashMap();

        map = adminService.userList(currentPage);
        paramMap.put("cpage", currentPage);


        model.addAttribute("map",map);


        return "admin/userList";

    }

    @RequestMapping(value = "/reportList")
    public String reportList(
            Model model

            ){

        ArrayList<Admin> list2 = adminService.reportList();

        int listCount = adminService.rListCount();

        model.addAttribute("list2",list2);





        return "/admin/reportList";
    }

    @RequestMapping(value = "/deleteBoard/{freeBno}")
    public String deleteBoard(
            @PathVariable("freeBno") int freeBno
    ){
        int result = adminService.deleteBoard(freeBno);

        return "redirect:/admin/userList";

    }
}
