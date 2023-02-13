package com.project.admin.dto;

import com.project.board.vo.Report;
import com.project.common.template.PageInfoCombine;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReportListResponse {
    private List<Report> ReportList;
    private PageInfoCombine pageInfoCombine;

}