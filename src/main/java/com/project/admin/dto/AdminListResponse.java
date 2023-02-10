package com.project.admin.dto;

import com.project.board.vo.Report;
import com.project.common.template.PageInfoCombine;
import com.project.member.vo.Member;
import com.project.realestate.vo.RealEstateRent;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AdminListResponse {
    private List<Member> MemberList;

    private PageInfoCombine pageInfoCombine;


}