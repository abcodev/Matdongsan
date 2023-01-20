package com.project.restaurant.vo;

import lombok.Data;

@Data
public class Review {

    private int revNo;
    private String memberNo;
    private int resNo;
    private String starRating;
    private String reviewContent;
    private String createDate;
    private String status;

}
