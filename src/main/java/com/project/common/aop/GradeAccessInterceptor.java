package com.project.common.aop;

import com.project.member.type.MemberGrade;
import com.project.member.vo.Member;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class GradeAccessInterceptor extends HandlerInterceptorAdapter  {

    @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws ServletException, IOException {

        String requestUrl = req.getRequestURI().substring(req.getContextPath().length());
        MemberGrade grade = getGrade(req.getSession());

        // 등급 권한이 없는 사용자
//        if(grade == null || requestUrl.contains("insertReview") && grade.equals("GENERAL")) {
//            req.setAttribute("errorMsg", "추가정보 입력 후 이용해 주세요");
//            req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req,res);
//            return false;
//        }

        if(requestUrl.contains("/insertReview") && grade.equals("GENERAL")) {
            req.setAttribute("errorMsg", "추가정보 입력 후 이용해 주세요");
            req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req,res);
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

// TODO: 인터셉터 조건 분리