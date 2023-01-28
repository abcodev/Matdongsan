package com.project.admin.controller;

import com.project.admin.service.AdminService;
import com.project.member.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    AdminService adminService;
    @RequestMapping(value = "/userList")
    public String userList(Model model){
        List<Member> list = adminService.userList();

        model.addAttribute("list",list);

        return "admin/userList";

    }

    @RequestMapping(value = "/reportList")
    public String reportList(Model model){
        List<Member> list = adminService.userList();

        model.addAttribute("list",list);


        return "/admin/reportList";
    }
}
