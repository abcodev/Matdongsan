package com.project.common.aop;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

// AOP 방식
@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(value = {Exception.class, RuntimeException.class})
    public ModelAndView defaultExceptionHandler(Exception ex) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("errorMsg", "서버 내부오류가 발생했습니다. 잠시후 다시 시도해주세요.");
        modelAndView.setViewName("common/errorPage");
        return modelAndView;
    }

}
