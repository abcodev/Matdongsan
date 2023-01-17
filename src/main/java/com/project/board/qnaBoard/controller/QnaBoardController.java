package com.project.board.qnaBoard.controller;

import com.project.board.qnaBoard.service.QnaBoardService;
import com.project.board.qnaBoard.vo.QnaBoard;
import com.project.common.template.Pagination;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/board")
public class QnaBoardController {

    private QnaBoardService boardService;

    @RequestMapping("/list/{boardCode}")
    public String selectList(
            @PathVariable("boardCode") String boardCode,
            @RequestParam(value = "cpage", defaultValue = "1") int currentPage,
            Model model,
            @RequestParam Map<String, Object> paramMap) {
        Map<String, Object> map = new HashMap();

        if (paramMap.get("condition") == null) {

            map = boardService.selectList(currentPage, boardCode);

        } else {
            paramMap.put("cpage", currentPage);
            paramMap.put("boardCode", boardCode);
            map = boardService.selectList(paramMap);
        }

        model.addAttribute("map", map);

        return "board/qnaBoardList";


    }


    @RequestMapping(value = "/qlistInsert.bo", method = RequestMethod.GET)
    public String insertBoard(Model model, QnaBoard qb, HttpSession session){
        int result = boardService.insertBoard(qb);

        if (result > 0) {
            session.setAttribute("alertMsg", "게시글 작성 성공");
            return "redirect:/qlist.bo";
        } else {
            model.addAttribute("errorMsg", "게시글 작성 실패");
            return "redirect:/qlist.bo";
            //에러페이지 만들면 변경
        }
    }

}
