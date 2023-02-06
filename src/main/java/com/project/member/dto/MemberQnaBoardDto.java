package com.project.member.dto;

import com.project.board.vo.QnaBoard;
import com.project.member.vo.Member;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.sql.Timestamp;
import java.util.List;

@Data
@AllArgsConstructor
@RequiredArgsConstructor

public class MemberQnaBoardDto extends Member {

    private long memberNo;
    private String provider;
    private String providerId;
    private String nickName;

    private int qnaBno;
    private String qnaTitle;
    private Timestamp qnaDate;
    private List<QnaBoard> qnaBoardList;


}
