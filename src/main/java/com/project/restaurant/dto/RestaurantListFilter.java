package com.project.restaurant.dto;

import com.project.restaurant.type.SearchState;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RestaurantListFilter {

    private String search;
    private List<SearchState> SearchStateList;
    private String area;

    public static RestaurantListFilter from(RestaurantListRequest req) {
        return new RestaurantListFilter(req.getSearch(), req.getSearchState(), req.getArea());
    }
}
