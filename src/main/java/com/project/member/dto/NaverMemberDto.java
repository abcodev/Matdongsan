package com.project.member.dto;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
public class NaverMemberDto {
    private String email;
    private String name;
    private String profileImage;
}
