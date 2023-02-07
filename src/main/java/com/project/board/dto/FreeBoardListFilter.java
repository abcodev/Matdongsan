package com.project.board.dto;


import com.project.restaurant.dto.RestaurantListFilter;
import com.project.restaurant.dto.RestaurantListRequest;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FreeBoardListFilter {

    private String state;

    private String search;

    private String select;

    public static FreeBoardListFilter from(FreeBoardListRequest req) {
        return new FreeBoardListFilter(req.getState(), req.getSearch(), req.getSelect());
    }
}
