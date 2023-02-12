package com.project.member.dto;

import com.project.common.template.PageInfoCombine;
import com.project.restaurant.vo.Review;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class MyPageListResponse {

    private List<AllBoard> allBoardList;
    private List<Review> reviewList;

    private PageInfoCombine pageInfoCombine;

//    private int fno;

}
