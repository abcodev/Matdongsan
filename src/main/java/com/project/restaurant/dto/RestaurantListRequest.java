package com.project.restaurant.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class RestaurantListRequest {

    private int currentPage;
    private String state;
    private List<String> hashtags;

}
