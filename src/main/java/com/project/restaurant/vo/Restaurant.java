package com.project.restaurant.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Restaurant {

    private String resNo;
    private String resName;
    private String state;
    private String address;
    private String resPhone;
    private String website;
    private String resTime;
    private String transport;
    private String resFood;
    private String resImgUrl;

    public static Restaurant of(Restaurant restaurant) {

        return Restaurant.builder()
                .resNo(restaurant.getResNo())
                .resName(restaurant.getResName())
                .state(restaurant.getState())
                .address(restaurant.getAddress())
                .resPhone(restaurant.getResPhone())
                .website(restaurant.getWebsite())
                .resTime(restaurant.getResTime())
                .transport(restaurant.getTransport())
                .resFood(restaurant.getResFood())
                .resImgUrl(restaurant.getResImgUrl())
                .build();
    }


    public void setImageUrl(String imageUrl) {
        this.resImgUrl = imageUrl;
    }

}
