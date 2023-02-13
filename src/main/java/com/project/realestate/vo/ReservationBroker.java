package com.project.realestate.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReservationBroker {
    private int revNo;
    private int memberNo;
    private String memberName;
    private int revPeople;
    private String phone;
    private String email;
    private String revAsk;
    private String revTime;
    private Date revDate;
    private Date revCreateDate;
    private String revSatus;
    private String agentNo;
}
