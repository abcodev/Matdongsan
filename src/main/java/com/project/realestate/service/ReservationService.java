package com.project.realestate.service;

import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.service.AlarmService;
import com.project.realestate.dao.ReservationDao;
import com.project.realestate.dto.ReservationDateFilter;
import com.project.realestate.dto.ReservationRequest;
import com.project.realestate.vo.ReservationBroker;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReservationService {

    private final ReservationDao reservationDao;
    private final AlarmService alarmService;

    public void reservationEnroll(ReservationRequest req){
        ReservationDateFilter reqFilter = ReservationDateFilter.filter(req);
        reservationDao.reservationEnroll(reqFilter);

        long receiverNo = reservationDao.memberNoOfEstate(req.getAgentNo());
        String senderName = reservationDao.memberNoOfReservation(req.getMemberNo());
        AlarmTemplate template = AlarmTemplate.generateNewReservation(receiverNo,senderName);
        alarmService.send(template);
    }

    public ReservationBroker selectReservation(int revNo){
        return reservationDao.selectReservation(revNo);
    }

    public void approveReservation(int revNo){
        reservationDao.approveReservation(revNo);
    }

    public void cancelReservation(int revNo){
        reservationDao.cancelReservation(revNo);
    }


}
