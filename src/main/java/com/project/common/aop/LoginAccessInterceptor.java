package com.project.common.aop;

import com.project.common.annotation.RequiredLogin;
import com.project.member.vo.Member;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginAccessInterceptor extends HandlerInterceptorAdapter {
    // 로그인 하지 않은 사용자가 로그인 해야하는 경로 접속했을 때
    @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws ServletException, IOException {
        if (hasRequiredLoginAnnotation(handler)) {
            if (!existLoginUser(req.getSession())) {
                res.setContentType("text/html; charset=utf-8");
                PrintWriter out = res.getWriter();
                String pageUrl = req.getContextPath();
                String element =
                                "<head><link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css'>" +
                                "<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js'></script></head>"+
                                "<body><script>Swal.fire({icon:'error',title:'로그인후 이용가능합니다.'}).then(()=>{location.href='" +
                                 pageUrl + "/loginPage'});</script></body>";
                out.println(element);
                out.flush();
                out.close();
                return false;
            }
        }
        return true;
    }

    public boolean existLoginUser(HttpSession session) {
        Member member = (Member) session.getAttribute("loginUser");
        return member != null;
    }

    private boolean hasRequiredLoginAnnotation(Object handler) {
        if (handler instanceof HandlerMethod) {
            return ((HandlerMethod) handler).hasMethodAnnotation(RequiredLogin.class)
                    || ((HandlerMethod) handler).getMethod().getDeclaringClass().isAnnotationPresent(RequiredLogin.class);
        }
        return false;
    }
}

