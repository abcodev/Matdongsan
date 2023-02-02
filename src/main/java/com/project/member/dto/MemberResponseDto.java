package com.project.member.dto;

import com.project.board.vo.FreeBoard;
import com.project.board.vo.QnaBoard;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
public class MemberResponseDto {
    private String freeBno;
    private String boardTitle;
    private String boardDate;
}
