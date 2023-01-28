package com.project.board.controller;

import com.project.board.service.FreeBoardService;
import com.project.common.type.StateList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/board")
public class FreeBoardContoller {

    @Autowired
    private FreeBoardService boardService;


    @RequestMapping("/freeList")
    public String selectFreeList() {
        return "board/freeBoardList";
    }



}
