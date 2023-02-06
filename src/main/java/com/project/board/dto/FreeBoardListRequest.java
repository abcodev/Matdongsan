package com.project.board.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class FreeBoardListRequest {

    private int currentPage;
    private String state;
    private String search;
}
