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

//        HandlerMethod handlerMethod = (HandlerMethod) handler;
//        Permission permission = handlerMethod.getMethodAnnotation(Permission.class); // 클래스에 붙이면 이게 null 이고 <-> 메서드에 붙이면 이게 notnull
//        Permission checkAuth = handlerMethod.getMethod().getDeclaringClass().getAnnotation(Permission.class); // 이게 notnull 일 수 있음 <-> null
        // 클래스에 붙여버리면 ** 부분에서 끝나버림 -> 클래스에 붙였을때 안먹힘

        // ** 어노테이션이 걸려있지 않다면 통과시킴
//        if (permission == null && checkAuth == null) {
//            return true;
//        }

        // 메서드로 뺀 경우
        Permission permission = this.findPermissionAnnotation(handler);

        // ** 어노테이션이 걸려있지 않다면 통과시킴
        if (permission == null) {
            return true;
        }

        HttpSession session = request.getSession();
        Member loginUser = (Member) session.getAttribute("loginUser");

        MemberGrade memberGrade = loginUser.getGrade();
        if (permission.authority().equals(MemberGrade.ADMIN)) {
            if (memberGrade.equals(MemberGrade.ADMIN)) {
                return true;
            } else {
                request.setAttribute("errorMsg", "관리자만 접근 가능합니다.");
                request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
                return false;
            }
        } else if (permission.authority().equals(MemberGrade.BROKER)) {
            if (memberGrade.equals(MemberGrade.BROKER)) {
                return true;
            } else {
                request.setAttribute("errorMsg", "로그인 후 이용할 수 있습니다.");
                request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
                return false;
            }
        } else if (permission.authority().equals(MemberGrade.GENERAL2)) {
            if (memberGrade.equals(MemberGrade.GENERAL2)) {
                return true;
            } else {
                request.setAttribute("errorMsg", "로그인 후 이용할 수 있습니다.");
                request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
                return false;

            }
        }
        return false;
    }

    /*
     *  Object -> 모든 클래스의 부모 클래스
     *  부모클래스 -> 자식클래스 ( Down Casting ) -> 강제형변환
     *      -> 한번 업캐스팅된 애가 다운캐스팅 되는순간.
     *  자식클래스 -> 부모클래스 ( Up Casting ) -> 자동형변환
     *
     *  상속 -> 자식은 부모를 대체할수있다. (대체가능성)
     *
     *  부모는 몇 개의 자식클래스를 가질수 있을까? 여러개..
     *      A 부모
     *    B   C 자식
     *
     *  B -> A : 업캐스팅 (자연스러운일) -> 그렇다고 실제로 메모리상에서 B 가 A 가되는건 아니고.
     *  C -> A : 업캐스팅
     *
     *  A -> B : 다운캐스팅
     *      B a = (B) new A();  -> 캐스팅 에러
     *
     *      1. A a = new B();
     *      2. B b = (B) a;  -> 다운캐스팅
     *
     *      1. A a = new B();
     *      2. B b = (B) a;   O
     *      3. C c = (C) a;   X  -> 이 상황에서 에러가 남
     */

    /**
     *  Object handler -> 어디선가 업캐스팅이 됐다.
     *  이걸 쓰기위해서 원래모양으로 돌려야하는데 => 다운캐스팅이 필요
     */
    // 메서드로
    private Permission findPermissionAnnotation(Object handler) {

        if (!(handler instanceof HandlerMethod)) {
            return null;
        }

        // 확인하지 않고 그냥 강제 형변환을 해서 에러 발생함
        HandlerMethod handlerMethod = (HandlerMethod) handler;
        Permission permission = handlerMethod.getMethodAnnotation(Permission.class);
        if (permission == null) {
            return handlerMethod.getMethod().getDeclaringClass().getAnnotation(Permission.class);
        }
        return permission;
    }
}


