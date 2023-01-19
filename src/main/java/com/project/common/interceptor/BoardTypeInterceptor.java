package com.project.common.interceptor;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.board.qnaBoard.service.QnaBoardService;
import com.project.board.qnaBoard.vo.BoardType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class BoardTypeInterceptor extends HandlerInterceptorAdapter{

    @Autowired
    private QnaBoardService boardService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {

        ServletContext application = request.getSession().getServletContext();
        if(application.getAttribute("boardTypeList") == null) {

            List<BoardType> boardTypeList = boardService.selectBoardTypeList();

            application.setAttribute("boardTypeList", boardTypeList);
        }
        return true;
    }
}
