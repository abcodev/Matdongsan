package com.project.restaurant.dto;

import com.project.restaurant.type.SearchState;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class RestaurantListRequest {

    private int currentPage;
    private String search;
    private List<SearchState> searchState;
    private String area;
//

}
