package com.project.board.controller;

import com.project.board.service.FreeBoardService;
import com.project.board.vo.FreeBoard;
import com.project.common.type.StateList;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("/board")
public class FreeBoardController {

    private final FreeBoardService freeBoardService;

    @RequestMapping("/freeList")
    public ModelAndView selectFreeList(ModelAndView modelAndView,
                                       @RequestParam(value = "state", defaultValue = "" ) String state,
                                       @RequestParam(value = "search", defaultValue = "") String search
    ){
        Map<String,String> option = new HashMap<>();
        option.put("state",state);
        option.put("search",search);
        System.out.println("map값" + option.get("state"));
        modelAndView.addObject("freeBoardList", freeBoardService.selectFreeList(option));
        modelAndView.addObject("stateList", StateList.values());
        modelAndView.setViewName("board/freeBoardList");
        System.out.println("zzz"+StateList.values());
        return modelAndView;
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

        freeBoardService.insertFboard(fb);

        //int fno = boardService.selectFno(fb);

        return "redirect:/board/freeList";

    }

    // 게시글 상세보기
    @RequestMapping("freeList/detail")
    public ModelAndView detailFreeBoard(ModelAndView mv, int fno){
        //FreeBoard fb = boardService.selectFboard(fno);

        mv.setViewName("board/freeBoardDetail");
        return mv;
    }

}
