package com.project.board.dto;

import com.project.board.vo.QnaBoard;
import com.project.common.template.PageInfoCombine;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class QnaBoardListResponse {
    private List<QnaBoard> qnaBoardList;
    private PageInfoCombine pageInfoCombine;

}
