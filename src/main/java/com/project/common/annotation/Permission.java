package com.project.common.annotation;


import com.project.member.type.MemberGrade;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

// @Retention 어노테이션이 언제까지 유지할지 정한다.
// @Target 어노테이션이 어디에 적용할지 정한다.
@Retention(RetentionPolicy.RUNTIME)
@Target(value = {ElementType.METHOD, ElementType.TYPE})
public @interface Permission {
    MemberGrade authority();
}
