package com.project.member.dto;

import com.project.board.vo.FreeBoard;
import com.project.member.vo.Member;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
public class MemberFreeBoardDto extends Member {

    private long memberNo;
    private String provider;
    private String providerId;
    private String nickName;

    private String boardNo;
    private String boardTitle;
    private String boardDate;

    private List<FreeBoard> freeBoardList;
}
