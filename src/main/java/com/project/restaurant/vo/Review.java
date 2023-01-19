package com.project.restaurant.vo;

import lombok.Data;

@Data
public class Review {

    private String revNo;
    private String memberNo;
    private String resNo;
    private String starRating;
    private String reviewContent;
    private String createDate;
    private String status;

}
