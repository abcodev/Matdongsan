package com.project.board.dto;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class QnaBoardListFilter {

    private String state;

    private String search;

    private String select;

    public static QnaBoardListFilter from(QnaBoardListRequest req) {
        return new QnaBoardListFilter(req.getState(), req.getSearch(), req.getSelect());
    }
}
