package com.project.board.dto;

import com.project.board.vo.QnaBoard;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
public class QnaBoardResponse {

    private List<QnaBoard> qnaBoardList;
}
