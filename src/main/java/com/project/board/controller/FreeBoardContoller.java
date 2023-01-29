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


//        @RequestMapping("/flist")
//        public String selectFlist(
//            @RequestParam(value = "fpage", required = false, defaultValue = "1") int currentPage,
//            Model model,
//            @RequestParam Map<String, Object> paramMap) {
//            Map<String, Object> map = new HashMap();
//            map = boardService.selectFlist(currentPage);
//            paramMap.put("fpage", currentPage);
//            map = boardService.selectFlist(paramMap);
//        model.addAttribute("map", map);
//        return "board/freeBoardList";
//   }


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
    @RequestMapping("freeList/detail")
    public ModelAndView detailFreeBoard(ModelAndView mv, int fno){
        //FreeBoard fb = boardService.selectFboard(fno);

        mv.setViewName("board/freeBoardDetail");
        return mv;
    }

}
