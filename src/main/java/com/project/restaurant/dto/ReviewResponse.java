package com.project.restaurant.dto;

import com.project.restaurant.vo.ResImg;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.stream.Collectors;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class ReviewResponse {
    private int revNo;
    private String resNo;
    private int starRating;
    private String reviewContent;
    private long memberNo;
    private String createDate;
    private String status;
    private String memberName;
    private String profileImage;

    private List<String> hashtags;
    private List<String> changeNames;

    public void setHashtags(List<ResHashtagDto> hashtags) {
        this.hashtags = hashtags.stream()
                .map(ResHashtagDto::getHashtag)
                .collect(Collectors.toList());
    }

    public void setImage(List<ResImg> resImgList) {
        this.changeNames = resImgList.stream()
//                .map(resImg -> "/Matdongsan/resources/images/restaurant/" + resImg.getChangeName())
                .map(resImg -> "/resources/images/restaurant/" + resImg.getChangeName())
                .collect(Collectors.toList());
    }
}
