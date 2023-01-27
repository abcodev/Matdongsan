package com.project.board.controller;

import com.project.board.service.FreeBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class FreeBoardContoller {

    @Autowired
    private FreeBoardService boardService;

//    @RequestMapping("/list/{boardCode}")
//    public String selectFlist(
//            @PathVariable("boardCode") String boardCode,
//            @RequestParam(value = "fpage", required = false, defaultValue = "1") int currentPage,
//            Model model,
//            @RequestParam Map<String, Object> paramMap) {
//        Map<String, Object> map = new HashMap();
//
//        if (paramMap.get("condition") == null) {
//
//            map = boardService.selectFlist(currentPage, boardCode);
//
//        } else {
//            paramMap.put("fpage", currentPage);
//            paramMap.put("boardCode", boardCode);
//
//            map = boardService.selectFlist(paramMap);
//
//        }
//
//        model.addAttribute("map", map);
//
//        return "board/freeBoardList";
//
//
//    }

//    // 게시글 등록
//    @RequestMapping("/enroll/{boardCode}")
//    public String enrollFormFboard(@PathVariable("boardCode") String boardCode, Model model){
//
//
//    }
}
