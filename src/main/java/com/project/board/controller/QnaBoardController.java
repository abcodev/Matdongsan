package com.project.board.controller;

import com.project.board.dto.QnaBoardListRequest;
import com.project.board.dto.QnaBoardListResponse;
import com.project.board.service.QnaBoardService;
import com.project.board.vo.QnaBoard;
import com.project.board.vo.Report;
import com.project.common.annotation.RequiredLogin;
import com.project.common.template.BoardCookieHelper;
import com.project.common.type.StateList;
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
import java.util.List;


@Controller
@RequiredArgsConstructor
@RequestMapping("/board")
public class QnaBoardController {
    private static final Logger logger = LoggerFactory.getLogger(QnaBoardController.class);
    private final QnaBoardService boardService;

    @RequestMapping("/qnaList")
    public ModelAndView selectFreeList(ModelAndView modelAndView,
                                       @RequestParam(value = "cpage", defaultValue = "1") int currentPage,
                                       @RequestParam(value = "state", defaultValue = "") String state,
                                       @RequestParam(value = "search", defaultValue = "") String search,
                                       @RequestParam(value = "select", defaultValue = "recent") String select
    ) {

        QnaBoardListRequest req = new QnaBoardListRequest(currentPage, state, search, select);
        QnaBoardListResponse resp = boardService.selectQnaList(req);

        // 공지사항 게시글 불러오기
        List<QnaBoard> qnaNoticeList = boardService.selectQaNoticeList();

        modelAndView.addObject("qnaNoticeList", qnaNoticeList);
        modelAndView.addObject("qnaBoardList", resp.getQnaBoardList());
        modelAndView.addObject("pi", resp.getPageInfoCombine());
        modelAndView.addObject("stateList", StateList.values());
        modelAndView.addObject("condition", req);
        modelAndView.setViewName("board/qnaBoardList");

        boardService.selectReportList();// 블라인드 조회 및 업데이트

        return modelAndView;
    }

    // 게시글 작성페이지
    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    @RequiredLogin
    public String insertBoard(
            Model model,
            HttpSession session
    ) {
        Member m = (Member) session.getAttribute("loginUser");
        model.addAttribute("localList", StateList.values());

        return "board/qnaInsertBoard";
    }

    // 게시글 등록
    @RequestMapping("/insert")
    public String insertQboard(Model model, QnaBoard qb, HttpSession session,
    @ModelAttribute("loginUser") Member loginUser,
    @RequestParam(value = "qnaArea", defaultValue = "") String qnaArea
    ) {
        Member m = (Member) session.getAttribute("loginUser");
        if(m.getMemberNo() == 1){
            boardService.insertNotice(qb);
        }else {
            boardService.insertQboard(qb);
        }
        return "redirect:/board/qnaList";
    }

    // 답글달기 페이지
    @RequestMapping(value = "/insertAnswer", method = RequestMethod.GET)
    @RequiredLogin
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
    @RequiredLogin
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
    @RequiredLogin
    public String reportPost(Report report) {
        int result = boardService.insertReport(report);
        if (result > 0) {
            return "1";
        } else {
            return "0";
        }
    }
}


