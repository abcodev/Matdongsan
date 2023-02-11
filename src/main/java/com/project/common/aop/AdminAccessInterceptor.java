package com.project.common.aop;

import com.project.member.type.MemberGrade;
import com.project.member.vo.Member;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/*
    AOP : Interceptor + Annotation
    TO-BE : RequestUrl 을 기준으로 확인
    AS-IS : Annotation 이 붙은 Controller Handler 를 기준으로 확인
    @OnlyAdmin 어노테이션이 붙은 애들에 대해서만 권한 체크
    APP -> Aspect + Annotation
    요청 -> Interceptor + Filter
 */
public class AdminAccessInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws ServletException, IOException {
        String requestUrl = req.getRequestURI().substring(req.getContextPath().length());
        MemberGrade grade = getGrade(req.getSession());

        if (grade == null) {
            req.setAttribute("errorMsg", "로그인 후 이용할 수 있습니다.");
            req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req, res);
            return false;
        }
        if (requestUrl.contains("admin") && !grade.equals(MemberGrade.ADMIN)) {
            req.setAttribute("errorMsg", "접근 권한이 없습니다");
            req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req, res);
            return false;
        }
        return true;
    }

    public MemberGrade getGrade(HttpSession session) {
        Member member = (Member) session.getAttribute("loginUser");
        if (member == null) {
            return null;
        }
        return member.getGrade();
    }

}