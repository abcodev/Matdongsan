package com.project.board.controller;

import com.project.board.service.FreeBoardService;
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

        @RequestMapping("/flist")
        public String selectFlist(

            @RequestParam(value = "fpage", required = false, defaultValue = "1") int currentPage,
            Model model,
            @RequestParam Map<String, Object> paramMap) {
            Map<String, Object> map = new HashMap();


            map = boardService.selectFlist(currentPage);

            paramMap.put("fpage", currentPage);


            map = boardService.selectFlist(paramMap);



        model.addAttribute("map", map);

        return "board/freeBoardList";


   }

//    // 게시글 등록
//    @RequestMapping("/enroll/{boardCode}")
//    public String enrollFormFboard(@PathVariable("boardCode") String boardCode, Model model){
//
//
//    }
}
