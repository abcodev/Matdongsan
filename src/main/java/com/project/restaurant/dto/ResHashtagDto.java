package com.project.restaurant.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResHashtagDto {
    private String resNo;
    private String hashtagId;
    private String hashtag;
    private long revNo;

}
