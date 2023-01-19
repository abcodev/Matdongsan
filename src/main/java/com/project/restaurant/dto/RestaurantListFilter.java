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

    private String state;
    private List<String> hashtags;

    public static RestaurantListFilter from(RestaurantListRequest req) {
        return new RestaurantListFilter(req.getState(), req.getHashtags());
    }
}
