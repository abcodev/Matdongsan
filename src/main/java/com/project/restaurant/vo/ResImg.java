package com.project.restaurant.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResImg {

    private String imgNo;
    private String reviewNo;
    private String memberNo;
    private String resNo;
    private String imageLevel;
    private String originName;
    private String changeName;

}
