package com.project.common.aop;

import com.project.common.annotation.Permission;
import com.project.member.type.MemberGrade;
import com.project.member.vo.Member;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/*
    AOP : Interceptor + Annotation
    TO-BE : RequestUrl 을 기준으로 확인
    AS-IS : Annotation 이 붙은 Controller Handler 를 기준으로 확인
    @OnlyAdmin 어노테이션이 붙은 애들에 대해서만 권한 체크
    APP -> Aspect + Annotation
    요청 -> Interceptor + Filter
 */
public class PermissionInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        // controller 메소드인지 check
        if (handler instanceof HandlerMethod == false) {
            return true;
        }

        // 2.형 변환
        HandlerMethod handlerMethod = (HandlerMethod) handler;

        // Permission 가져오기
        Permission permission = handlerMethod.getMethodAnnotation(Permission.class);
        Permission classPermission = handlerMethod.getMethod().getDeclaringClass().getAnnotation(Permission.class);

        // @Permission() 메소드나 클래스에 어노테이션 있는지 check
        if(classPermission == null && permission == null){
            return true;
        }

        // 메서드에 @Permission 이 없는경우는 인터셉터 제외
        HttpSession session = request.getSession();
        // login 체크는 requiredLogin으로 한다.
        Member member = (Member) session.getAttribute("loginUser");
        MemberGrade authority = member.getGrade();


        if(classPermission != null){
            if (classPermission.authority().equals(MemberGrade.ADMIN)) {
                if (authority.equals(MemberGrade.ADMIN)) {
                    return true;
                } else {
                    request.setAttribute("errorMsg", "관리자만 접근 가능합니다.");
                    request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
                    return false;
                }
            }
        } else if (permission.authority().equals(MemberGrade.BROKER)) {
            if (authority.equals(MemberGrade.BROKER)) {
                    return true;
                } else {
                    request.setAttribute("errorMsg", "부동산 제휴회원만 이용가능한 페이지입니다.");
                    request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
                    return false;
                }
        } else if (permission.authority().equals(MemberGrade.GENERAL2)) {
                if (authority.equals(MemberGrade.GENERAL2)) {
                    return true;
                } else {
                    request.setAttribute("errorMsg", "마이페이지에서 정보 입력후 사용가능합니다.");
                    request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
                    return false;
                }
        }
            return true;
        }
}


