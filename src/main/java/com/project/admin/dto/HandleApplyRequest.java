package com.project.admin.dto;


import com.project.member.type.MemberGrade;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HandleApplyRequest {

    private String status;
    private String agentNO;
    private String memberNo;
    private MemberGrade grade = MemberGrade.BROKER;
}
