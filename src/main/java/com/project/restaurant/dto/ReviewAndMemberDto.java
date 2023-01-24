package com.project.restaurant.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewAndMemberDto {
    private int revNo;
    private String resNo;
    private int starRating;
    private String reviewContent;
    private long memberNo;
    private String createDate;
    private String status;
    private String memberName;


    private String profileImage;
    private String hashtag;
    private String changeName;


}
