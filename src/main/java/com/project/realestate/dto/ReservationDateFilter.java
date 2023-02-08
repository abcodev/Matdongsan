package com.project.realestate.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.text.ParseException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;



@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ReservationDateFilter {

    private long memberNo;
    private String memberName;
    private String agentNo;
    private String peopleCount;
    private String phone;
    private String email;
    private String requestText;
    private String revTime;
    private Date revDate;

    public static ReservationDateFilter filter(ReservationRequest req){

        java.sql.Date date = java.sql.Date.valueOf(req.getRevDate());

        return ReservationDateFilter.builder()
                .memberNo(req.getMemberNo())
                .memberName(req.getMemberName())
                .agentNo(req.getAgentNo())
                .peopleCount(req.getPeopleCount())
                .phone(req.getPhone())
                .email(req.getEmail())
                .requestText(req.getRequestText())
                .revTime(req.getRevTime())
                .revDate(date).build();
    }


}


