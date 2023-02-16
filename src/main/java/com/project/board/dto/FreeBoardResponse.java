package com.project.board.dto;

import com.project.board.vo.FreeBoard;
import com.project.common.template.PageInfoCombine;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
public class FreeBoardResponse {

    private List<FreeBoard> freeBoardList;

    private PageInfoCombine pageInfoCombine;



}
