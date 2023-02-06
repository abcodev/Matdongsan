package com.project.member.dto;

import com.project.board.vo.FreeBoard;
import com.project.board.vo.QnaBoard;
import com.project.common.template.PageInfoCombine;
import com.project.realestate.vo.Interest;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class MyPageListResponse {

    private List<AllBoard> allBoardList;

    private PageInfoCombine pageInfoCombine;

}
