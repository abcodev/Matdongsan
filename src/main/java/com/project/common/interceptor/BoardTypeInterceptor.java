package com.project.common.interceptor;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.board.qnaBoard.service.QnaBoardService;
import com.project.board.qnaBoard.vo.BoardType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class BoardTypeInterceptor extends HandlerInterceptorAdapter{


    private QnaBoardService boardService;

    @Autowired
    public void QnaBoardService(QnaBoardService boardService) {
        this.boardService = boardService;
    }
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
