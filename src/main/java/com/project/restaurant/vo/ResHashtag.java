package com.project.restaurant.vo;

import com.project.member.vo.Member;
import com.project.restaurant.dto.InsertReviewRequest;
import lombok.Data;

@Data
public class ResHashtag {
    private String resNo;
    private String hashtagId;
    private long revNo;
    private long memberNo;

    public ResHashtag() {}
    public ResHashtag(Member member, InsertReviewRequest req, int revNo, Hashtag hashtagEntity) {
        this.resNo = req.getResNo();
        this.revNo = revNo;
        this.hashtagId = hashtagEntity.getHashtagId();
        this.memberNo = member.getMemberNo();
    }
}
