package com.project.board.dto;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class FreeBoardCountDto {
    private int freeBoardNo;
    private long memberNo;

    public static FreeBoardCountDto count(int fno,long memberNo){
        return FreeBoardCountDto.builder()
                .freeBoardNo(fno)
                .memberNo(memberNo)
                .build();
    }

}
