package com.project.realestate.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReservationResponse {

    public int revNo;
    private long memberNo;
    private String memberName;
    private String peopleCount;
    private String phone;
    private String email;
    private String revTime;
    private String revDate;
    private String requestText;
    private String status;
    private String agentName;

}

