package com.project.realestate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RealestateController {

    @RequestMapping("/realEstate")
    public String realEstatePage(){
        return "realestate/realestateList";
    }
}
