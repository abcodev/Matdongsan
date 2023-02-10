package com.project.admin.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class BrokerEnroll {
    private long memberNo;
    private String memberName;
    private String email;
    private String agentNo;
    private String agentName;
    private String agentPhone;
    private String attachment;
    private String applyStatus;
}
