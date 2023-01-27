package com.project.board.controller;

import com.project.board.service.FreeBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/board")
public class FreeBoardContoller {

    @Autowired
    private FreeBoardService boardService;

    @RequestMapping("/flist/{boardCode}")
    public String selectFlist(
            @PathVariable("boardCode") String boardCode,
            @RequestParam(value = "fpage", required = false, defaultValue = "1") int currentPage,
            Model model,
            @RequestParam Map<String, Object> paramMap) {
        Map<String, Object> map = new HashMap();

        if (paramMap.get("condition") == null) {

            map = boardService.selectFlist(currentPage, boardCode);

        } else {
            paramMap.put("fpage", currentPage);
            paramMap.put("boardCode", boardCode);

            map = boardService.selectFlist(paramMap);

        }

        model.addAttribute("map", map);

        return "board/freeBoardList";


    }

    // 게시글 상세 페이지
    @RequestMapping("/fDetail")
    public ModelAndView detailFreeBoard(){
        ModelAndView mv = new ModelAndView();

        mv.setViewName("board/freeBoardDetail");

        return mv;
    }

    // 게시글 등록페이지
    @RequestMapping("/enroll/F")
    public String enrollFormFboard(Model model){

        //model.addAttribute(boardWriter);

        return "board/freeBoardEnroll";
    }

    // 게시글 등록
    @RequestMapping("/fInsert")
    public String insertFreeBoard(){

        return "redirect:../fList";
    }
}
