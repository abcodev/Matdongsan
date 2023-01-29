package com.project.board.controller;

import com.project.board.service.FreeBoardService;
import com.project.board.vo.FreeBoard;
import com.project.common.type.StateList;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("/board")
public class FreeBoardContoller {

    private final FreeBoardService freeBoardService;
    @Autowired
    private FreeBoardService boardService;

    @RequestMapping("/freeList")
    public String selectFreeList(ModelAndView modelAndView) {
        List<FreeBoard> freeBoardList = freeBoardService.selectFreeList();
        return "board/freeBoardList";
    }


    // 게시글 작성폼
    @RequestMapping("/freeList/enrollForm")
    public String enrollForm(HttpSession session){

        return "board/freeBoardEnroll";
    }

    // 게시글 등록
    @RequestMapping("freeList/insert")
    public String insertFreeBoard(@RequestParam(value = "boardWriter", defaultValue = "테스트")String boardWriter,
                                  @RequestParam(value = "boardArea") String boardArea,
                                  Model model, FreeBoard fb){
        model.addAttribute("boardWrtier", boardWriter);

        boardService.insertFboard(fb);

        //int fno = boardService.selectFno(fb);

        return "redirect:/board/freeList";

    }

    // 게시글 상세보기
    @RequestMapping("freeList/detail/{fno}")
    public ModelAndView detailFreeBoard(ModelAndView mv, @PathVariable("fno") int fno){
        FreeBoard fb = boardService.selectFboard(fno);

        mv.addObject("fb", fb );
        mv.setViewName("board/freeBoardDetail");
        return mv;
    }

}
