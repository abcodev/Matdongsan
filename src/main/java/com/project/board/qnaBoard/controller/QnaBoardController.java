package com.project.board.qnaBoard.controller;

import com.project.board.qnaBoard.service.QnaBoardService;
import com.project.board.qnaBoard.service.QnaBoardServiceImpl;
import com.project.board.qnaBoard.vo.BoardType;
import com.project.board.qnaBoard.vo.QnaBoard;
import com.project.common.template.Pagination;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
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
            @RequestParam Map<String, Object> paramMap,
            HttpSession session) {
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

    /*게시글 작성페이지*/
    @RequestMapping(value = "/insert/{boardCode}",method = RequestMethod.GET)
    public String insertBoard(
            @PathVariable("boardCode") String boardCode
    ) {
        return "board/qnaInsertBoard";
    }

    /*게시글 등록*/
    @RequestMapping("/insert/{boardCode}")
    public String insertQboard(
            @PathVariable("boardCode") String boardCode,
            Model model, QnaBoard qb,HttpSession session){


        int result = boardService.insertQboard(qb);


            return "board/qnaBoardList";
        }


    /*답글달기 페이지*/
    @RequestMapping(value = "/insertAnswer/{boardCode}",method = RequestMethod.GET)
    public String insertBoard2(
            @PathVariable("boardCode") String boardCode
    ) {
        return "board/qnaInsertAnswer";
    }
    /*답글 등록*/
    @RequestMapping("insertAnswer/{boardCode}")
    public String insertAnswer(
            @PathVariable("boardCode")String boardCode,
            @RequestParam(value = "depth",required = false, defaultValue = "1")int depth,
            @RequestParam(value = "parentBno",required = false, defaultValue = "1")int parentBno,
            Model model, QnaBoard qb
    ){
        qb.setDepth(qb.getDepth() + 1);
        qb.setParentBno(qb.getParentBno() + 1);


        int answer = boardService.insertAnswer(qb);


        model.addAttribute("qb",qb);


        return "board/qnaBoardList";

    }

    // 상세페이지
    @RequestMapping("/detail/{boardCode}/{qBno}")
    public ModelAndView qnaDetail(
            @PathVariable("boardCode") String boardCode,
            @PathVariable("qBno") int qBno,
            ModelAndView mv

    ) {
        QnaBoard qb = boardService.selectQboard(qBno);

        QnaBoard ab = boardService.selectAnswer(qBno);

        int result = boardService.increaseCount(qBno);


            mv.addObject("qb", qb);
            mv.addObject("ab", ab);
            mv.setViewName("board/qnaDetailList");

        return mv;

    }
}


