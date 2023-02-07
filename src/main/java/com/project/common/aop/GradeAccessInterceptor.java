//package com.project.common.aop;
//
//import com.project.member.type.MemberGrade;
//import com.project.member.vo.Member;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//
//public class GradeAccessInterceptor {
//
//    @Override
//    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws ServletException, IOException {
//
//        String requestUrl = req.getRequestURI().substring(req.getContextPath().length());
//
//        MemberGrade grade = getGrade(req.getSession());
//
//        // 로그인 안한 사용자
//        if(grade == null){
//            req.setAttribute("errorMsg","로그인 후 이용할 수 있습니다.");
//            return false;
//        }
//
////        // 등급 권한이 없는 사용자
////        if(grade == null || requestUrl.contains("board") && grade.equals("GENERAL")) {
////            req.setAttribute("errorMsg", "추가정보 입력 후 이용해 주세요");
////            req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req,res);
////            return false;
////        }
////
////        // insertReview 일때가 아니고 버튼 누를때부터 뜨게 해야함
////        // 이건 프론트 영역에서만 알랏으로 한번 걸러주고 url로 접근했을때만 인서트 못하도록 걸려 주는 방법 밖에는?
////        if(grade == null || requestUrl.contains("insertReview") && grade.equals("GENERAL")) {
////            req.setAttribute("errorMsg", "추가정보 입력 후 이용해 주세요");
////            req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req,res);
////            return false;
////        }
//
//        return true;
//
//    }
//
//    public MemberGrade getGrade(HttpSession session){
//        Member member = (Member)session.getAttribute("loginUser");
//        if(member == null){
//            return null;
//        }
//        return member.getGrade();
//    }
//
//}
