package com.project.common.aop;

import com.project.member.type.MemberGrade;
import com.project.member.vo.Member;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginAccessInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws ServletException, IOException {

        String requestUrl = req.getRequestURI().substring(req.getContextPath().length());
        MemberGrade grade = getGrade(req.getSession());

        // 로그인 안한 사용자
        if(grade == null){
            req.setAttribute("errorMsg","로그인 후 이용할 수 있습니다.");
            return false;
        }
        return true;
    }

    public MemberGrade getGrade(HttpSession session){
        Member member = (Member)session.getAttribute("loginUser");
        if(member == null){
            return null;
        }
        return member.getGrade();
    }

}
