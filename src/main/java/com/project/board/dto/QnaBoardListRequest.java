package com.project.board.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class QnaBoardListRequest {

    private int currentPage;
    private String state;
    private String search;
    private String select;
}
