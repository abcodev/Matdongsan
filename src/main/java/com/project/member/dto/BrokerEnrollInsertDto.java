package com.project.member.dto;

import com.project.admin.vo.BrokerEnroll;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BrokerEnrollInsertDto {

    private String agentNo;
    private String state;
    private String bjdongNm;
    private String address;
    private String refName;
    private String agentName;
    private String agentPhone;
    private long memberNo;
    private String attachment;

    public static BrokerEnrollInsertDto of(BrokerEnroll brokerEnroll) {
        return BrokerEnrollInsertDto.builder()
                .agentNo(brokerEnroll.getAgentNo())
                .state(brokerEnroll.getState())
                .bjdongNm(brokerEnroll.getBjdongNm())
                .address(brokerEnroll.getAddress() + " " + brokerEnroll.getAddressDetail())
                .refName(brokerEnroll.getRefName())
                .agentName(brokerEnroll.getAgentName())
                .agentPhone(brokerEnroll.getAgentPhone())
                .memberNo(brokerEnroll.getMemberNo())
                .attachment(brokerEnroll.getAttachment())
                .build();
    }

}
