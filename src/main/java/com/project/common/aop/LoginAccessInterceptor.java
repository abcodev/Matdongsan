package com.project.common.aop;

import com.project.member.vo.Member;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginAccessInterceptor extends HandlerInterceptorAdapter {
    // 로그인 하지 않은 사용자가 로그인 해야하는 경로 접속했을 때
    @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws ServletException, IOException {

        if (existLoginUser(req.getSession())) {
            req.setAttribute("errorMsg", "로그인 후 이용할 수 있습니다.");
            req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req, res);
            return false;
        }
        return true;
    }

    public boolean existLoginUser(HttpSession session) {
        Member member = (Member) session.getAttribute("loginUser");
        return member != null;
    }

}
