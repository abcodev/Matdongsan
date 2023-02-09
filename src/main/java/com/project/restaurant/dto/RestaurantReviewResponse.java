package com.project.restaurant.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RestaurantReviewResponse {

    List<ReviewResponse> reviewList;
    List<String> hashtagList;

}
