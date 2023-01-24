package com.project.restaurant.vo;

import com.project.member.vo.Member;
import com.project.restaurant.dto.InsertReviewRequest;
import lombok.Builder;
import lombok.Data;
import oracle.sql.DATE;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDateTime;


@Data
@Builder
public class Review {

    private int revNo;
    private long memberNo;
    private String resNo;
    private int starRating;
    private String reviewContent;
    private Timestamp createDate;
    private String status;

    // 정적 팩토리 메소드 -> 객체 생성의 책임을 가지는 메소드
    public static Review of(Member member, InsertReviewRequest req) {
        return Review.builder()
                .memberNo(member.getMemberNo())
                .resNo(req.getResNo())
                .starRating(req.getScore())
                .reviewContent(req.getContents())
                .createDate(Timestamp.valueOf(LocalDateTime.now()))
                .status("Y")
                .build();
    }
}
