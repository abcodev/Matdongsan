package com.project.chat.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class RoomCheckDto {
    private String roomNo;
    private long memberNo;

    public static RoomCheckDto checkDto(Long memberNo){
        return RoomCheckDto.builder().memberNo(memberNo).build();
    }
}
