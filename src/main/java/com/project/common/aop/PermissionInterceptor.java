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
        System.out.println("인터셉터 시작!");
        HandlerMethod handlerMethod = (HandlerMethod) handler;
        Permission permission = handlerMethod.getMethodAnnotation(Permission.class);
        Permission checkAuth = handlerMethod.getMethod().getDeclaringClass().getAnnotation(Permission.class);
        HttpSession session = request.getSession();

        // 어노테이션이 걸려있지 않다면 통과 시킴.
        if (permission == null) {
            return true;
        }

        Member loginUser = (Member) session.getAttribute("loginUser");
        MemberGrade authority = loginUser.getGrade();
        String aaaa = checkAuth.authority().toString();
        if (checkAuth != null) {
            if(aaaa.equals(MemberGrade.ADMIN)) {
                if (authority.equals(MemberGrade.ADMIN)) {
                    return true;
                } else {
                    request.setAttribute("errorMsg", "관리자만 접근 가능합니다.");
                    request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
                    return false;
                }
            }
        }


            if (permission.authority().equals(MemberGrade.ADMIN)) {
                if (authority.equals(MemberGrade.ADMIN)) {
                    return true;
                } else {
                    request.setAttribute("errorMsg", "로그인 후 이용할 수 있습니다.");
                    request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
                    return false;
                }
            } else if (permission.authority().equals(MemberGrade.BROKER)) {
                if (authority.equals(MemberGrade.BROKER)) {
                    return true;
                } else {
                    request.setAttribute("errorMsg", "로그인 후 이용할 수 있습니다.");
                    request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
                    return false;
                }
            } else if (permission.authority().equals(MemberGrade.GENERAL2)) {
                if (authority.equals(MemberGrade.GENERAL2)) {
                    return true;
                } else {
                    request.setAttribute("errorMsg", "로그인 후 이용할 수 있습니다.");
                    request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
                    return false;

                }
            }

            return false;
        }
    }


