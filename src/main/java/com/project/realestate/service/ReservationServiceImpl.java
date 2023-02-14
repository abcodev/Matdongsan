package com.project.realestate.service;

import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.service.AlarmService;
import com.project.realestate.dao.ReservationDao;
import com.project.realestate.dto.ReservationDateFilter;
import com.project.realestate.dto.ReservationRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReservationServiceImpl implements ReservationService{

    private final ReservationDao reservationDao;

    private AlarmService alarmService;

    @Override
    public void reservationEnroll(ReservationRequest req){
        ReservationDateFilter reqFilter = ReservationDateFilter.filter(req);
        reservationDao.reservationEnroll(reqFilter);

        long receiverNo = reservationDao.memberNoOfEstate(req.getAgentNo());
        String seenderName = reservationDao.memberNoOfReservation(req.getMemberNo());
        AlarmTemplate template = AlarmTemplate.generateNewRervation(receiverNo,seenderName);
        alarmService.send(template);
    }
}
