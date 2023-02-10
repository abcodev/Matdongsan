package com.project.board.controller;

import com.project.board.service.QnaBoardService;
import com.project.board.vo.QnaBoard;
import com.project.board.vo.Report;
import com.project.common.template.BoardCookieHelper;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequiredArgsConstructor
@RequestMapping("/board")
public class QnaBoardController {
    private static final Logger logger = LoggerFactory.getLogger(QnaBoardController.class);
    private final QnaBoardService boardService;

    @RequestMapping("/qnaList")
    public String selectList(@RequestParam(value = "cpage", required = false, defaultValue = "1") int currentPage,
                             @RequestParam Map<String, Object> paramMap,
                             Model model,
                             HttpSession session
    ) {

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

    // 게시글 작성페이지
    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    public String insertBoard(
            ModelAndView mv,
            HttpSession session
    ) {
        Member m = (Member) session.getAttribute("loginUser");
        logger.info("session insert :"+m);
        return "board/qnaInsertBoard";
    }

    // 게시글 등록
    @RequestMapping("/insert")
    public String insertQboard(Model model, QnaBoard qb, HttpSession session
    ,@ModelAttribute("loginUser") Member loginUser) {

        Member m = (Member) session.getAttribute("loginUser");
        loginUser.getMemberNo();
        qb.setQnaArea(qb.getQnaArea());

        int result = boardService.insertQboard(qb);
        return "redirect:/board/qnaList";
    }


    // 답글달기 페이지
    @RequestMapping(value = "/insertAnswer", method = RequestMethod.GET)
    public ModelAndView insertBoard2(
            @RequestParam(value = "depth") String depth,
            @RequestParam(value = "pBno") String parentBno,
            @RequestParam(value = "qBno") String qBno,
            HttpSession session,
            ModelAndView mv
    ) {
        mv.setViewName("board/qnaInsertAnswer");

        mv.addObject("depth", depth);
        mv.addObject("pBno", parentBno);
        mv.addObject("qBno", qBno);
        Member m = (Member) session.getAttribute("loginUser");
        return mv;
    }

    /**
     * 답글 등록
     */
    @RequestMapping("insertAnswer")
    public String insertAnswer(
            @RequestParam(value = "depth") int depth,
            @RequestParam(value = "pBno") int parentBno,
            @RequestParam(value = "qBno") int qBno,
            HttpSession session,
            Model model, QnaBoard qb
    ) {
        Member m = (Member) session.getAttribute("loginUser");
        qb.setDepth(qb.getDepth() + 1);
        qb.setParentBno(qBno);
        qb.setMemberNo(m.getMemberNo());
        boardService.insertAnswer(qb);
        model.addAttribute("qb", qb);
        return "redirect:/board/qnaList";
    }

    // 상세 페이지
    @RequestMapping("/detail/{qBno}")
    public ModelAndView qnaDetail(@PathVariable("qBno") int qBno,
                                  @ModelAttribute("loginUser") Member loginUser,
                                  HttpSession session,
                                  ModelAndView mv,
                                  HttpServletRequest req,
                                  HttpServletResponse resp
    ) {

        QnaBoard qb = boardService.selectQboard(qBno);
        List<QnaBoard> ab = boardService.selectAnswer(qBno);

        if (!BoardCookieHelper.existCountUpCookie(req, "qna", qBno)) {
            boardService.increaseCount(qBno);
            BoardCookieHelper.generateCountUpCookie(req, resp, "qna", qBno);
        }

        mv.addObject("qb", qb);
        mv.addObject("ab", ab);
        mv.setViewName("board/qnaDetailList");

        return mv;
    }

    // 게시글 삭제
    @RequestMapping(value = "/delete/{qBno}", method = RequestMethod.GET)
    public String deleteBoard(@PathVariable("qBno") int qBno
    ) {
        int result = boardService.deleteBoard(qBno);
        return "redirect:/board/qnaList";
    }

    @RequestMapping("/qnaReport")
    @ResponseBody
    public String reportPost(Report report) {

        int result = boardService.insertReport(report);

        if (result > 0) {
            return "1";
        } else {
            return "0";
        }
    }
}


