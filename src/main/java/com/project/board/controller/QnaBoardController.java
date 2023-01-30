package com.project.board.controller;

import com.project.board.service.QnaBoardService;
import com.project.board.vo.QnaBoard;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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

    @RequestMapping("/qnaList")
    public String selectList(@RequestParam(value = "cpage",required = false,defaultValue ="1") int currentPage,
                             @RequestParam Map<String, Object> paramMap,
                             Model model,
                             HttpSession session) {
        Map<String, Object> map = new HashMap();
        if (paramMap.get("condition") == null) {
            map = boardService.selectList(currentPage);
        } else {
            paramMap.put("cpage", currentPage);
            map = boardService.selectList(paramMap);
        }
        model.addAttribute("map", map);
        return "board/qnaBoardList";
    }

    /*게시글 작성페이지*/
    @RequestMapping(value = "/insert",method = RequestMethod.GET)
    public String insertBoard(
            ModelAndView mv

    ) {
        return "board/qnaInsertBoard";
    }

    /*게시글 등록*/
    @RequestMapping("/insert")
    public String insertQboard(
            Model model, QnaBoard qb,HttpSession session){

        qb.setQnaArea(qb.getQnaArea());
        int result = boardService.insertQboard(qb);
        return "redirect:/board/list";
        }


    /*답글달기 페이지*/
    @RequestMapping(value = "/insertAnswer",method = RequestMethod.GET)
    public ModelAndView insertBoard2(
            @RequestParam(value = "depth")String depth,
            @RequestParam(value = "pBno")String parentBno,
            @RequestParam(value = "qBno") String qBno,
            ModelAndView mv
    ) {
        mv.setViewName("board/qnaInsertAnswer");
        mv.addObject("depth", depth);
        mv.addObject("pBno", parentBno);
        mv.addObject("qBno", qBno);

        return mv;
    }
    /*답글 등록*/
    @RequestMapping("insertAnswer")
    public String insertAnswer(
            @RequestParam(value = "depth") String depth,
            @RequestParam(value = "pBno") String parentBno,
            @RequestParam(value = "qBno") String qBno,
            Model model, QnaBoard qb
    ){
        qb.setDepth(qb.getDepth() + 1);
        qb.setParentBno(Integer.parseInt(qBno));

        int answer = boardService.insertAnswer(qb);

        model.addAttribute("qb",qb);


        return "redirect:/board/list";

    }

    // 상세페이지
    @RequestMapping("/detail/{qBno}")
    public ModelAndView qnaDetail(

            @PathVariable("qBno") int qBno,
            ModelAndView mv
    ) {


        QnaBoard qb = boardService.selectQboard(qBno);

        List<QnaBoard> ab = boardService.selectAnswer(qBno);

        int result = boardService.increaseCount(qBno);


            mv.addObject("qb", qb);
            mv.addObject("ab", ab);
            mv.setViewName("board/qnaDetailList");

        return mv;
    }

    @RequestMapping(value = "/delete/{qBno}", method = RequestMethod.GET)
    public String deleteBoard(
            @PathVariable("qBno") int qBno
    ){

        int result = boardService.deleteBoard(qBno);


            return "redirect:/board/list";

    }
}


