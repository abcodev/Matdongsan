package com.project.board.dto;

import com.project.board.vo.FreeBoard;
import com.project.common.template.PageInfoCombine;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreeBoardListResponse {
    private List<FreeBoard> freeBoardList;
    private PageInfoCombine pageInfoCombine;

}
