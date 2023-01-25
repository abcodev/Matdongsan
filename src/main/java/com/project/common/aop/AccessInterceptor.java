package com.project.common.aop;

import com.project.member.type.MemberGrade;
import com.project.member.vo.Member;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

// AOP -> Interceptor + Annotation
// To-Be : RequestUrl 을 기준으로 확인한다.
// As-Is : Annotation 이 붙은 Controller Handler 를 기준으로 확인한다.
// @OnlyAdmin 어노테이션이 붙은 애들에 대해서만 권한체크
// AOP -> Aspect + Annotation
// 요청 -> Interceptor, Filter
public class AccessInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws ServletException, IOException {

        // 요청 url 정보
        String requestUrl = req.getRequestURI().substring(req.getContextPath().length());
        // 권한체크
        MemberGrade grade = getGrade(req.getSession()); // session 에 있는 member객체의 role을 가져온다

        // 로그인 안한 사용자
        if(grade == null){
            req.setAttribute("errorMsg","로그인 후 이용할 수 있습니다.");
            req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req,res);
            return false;
        }
        // admin 경로 권한이 없는 사용자
        if(requestUrl.contains("admin") && !grade.equals(MemberGrade.ADMIN)){
            // url 에 admin 이 있는 경로로 갈 경우 session에 있는 member객체에서 role을 검사하기.
            req.setAttribute("errorMsg","권한이 없습니다");
            req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req,res);
            return  false;
        }

        // 등급 권한이 없는 사용자
//        if(requestUrl.contains("board") && grade.equals("GENERAL")) {
//            req.setAttribute("errorMsg", "추가정보 입력 후 이용해 주세요");
////            req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req,res);
//            return false;
//        }

//        if(requestUrl.contains("insertReview") && grade.equals("GENERAL")) {
//            req.setAttribute("errorMsg", "추가정보 입력 후 이용해 주세요");
////            req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req,res);
//            return false;
//        }

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
