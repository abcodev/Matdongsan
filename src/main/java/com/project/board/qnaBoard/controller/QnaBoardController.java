package com.project.board.qnaBoard.controller;

import com.project.board.qnaBoard.service.QnaBoardService;
import com.project.board.qnaBoard.service.QnaBoardServiceImpl;
import com.project.board.qnaBoard.vo.BoardType;
import com.project.board.qnaBoard.vo.QnaBoard;
import com.project.common.template.Pagination;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



@Controller
@RequestMapping("/board")
public class QnaBoardController {

    private static final Logger logger = LoggerFactory.getLogger(QnaBoardController.class);

    @Autowired
    private QnaBoardService boardService;


    @RequestMapping("/list/{boardCode}")
    public String selectList(
            @PathVariable("boardCode") String boardCode,
            @RequestParam(value = "cpage",required = false,defaultValue ="1") int currentPage,
            Model model,
            @RequestParam Map<String, Object> paramMap) {
        Map<String, Object> map = new HashMap();

        if (paramMap.get("condition") == null) {

            map = boardService.selectList(currentPage,boardCode);

        } else {
            paramMap.put("cpage", currentPage);
            paramMap.put("boardCode", boardCode);

            map = boardService.selectList(paramMap);

        }

        model.addAttribute("map", map);

        return "board/qnaBoardList";


    }


  /*  @RequestMapping("/insert/{boardCode}")
    public String insertQboard(@PathVariable("boardCode") String boardCode,
    Model model, QnaBoard qb, HttpSession session){
        int result = boardService.insertBoard(qb);

        if (result > 0) {
            session.setAttribute("alertMsg", "게시글 작성 성공");
            return "redirect:../list/"+boardCode";
        } else {
            model.addAttribute("errorMsg", "게시글 작성 실패");
            return "redirect:/qlist.bo";
            //에러페이지 만들면 변경
        }
    }*/

    // 상세페이지
    @RequestMapping("/detail/{boardCode}")
    public ModelAndView qBoardEnrollForm(
            @PathVariable("boardCode") String boardCode,
            ModelAndView mv,
            int qBno
    ) {
        QnaBoard qb = boardService.selectQboard(qBno);

        int result = boardService.increaseCount(qBno);

        if (result > 0) {
            mv.addObject("qb", qb);
            mv.setViewName("board/boardDetailView");
        } else {
            mv.setViewName("board/qnaBoardList");
        }
        return mv;

    }
}


