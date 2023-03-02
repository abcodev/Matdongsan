package com.project.realestate.service;

import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.service.AlarmService;
import com.project.realestate.repository.ReservationRepository;
import com.project.realestate.dto.ReservationDateFilter;
import com.project.realestate.dto.ReservationRequest;
import com.project.realestate.dto.ReservationBrokerDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReservationService {

    private final ReservationRepository reservationRepository;
    private final AlarmService alarmService;

    public void reservationEnroll(ReservationRequest req) {
        ReservationDateFilter reqFilter = ReservationDateFilter.filter(req);
        reservationRepository.reservationEnroll(reqFilter);

        long receiverNo = reservationRepository.memberNoOfEstate(req.getAgentNo());
        String senderName = reservationRepository.memberNoOfReservation(req.getMemberNo());
        AlarmTemplate<String> template = AlarmTemplate.generateNewReservation(receiverNo, senderName, req.getAgentNo());
        alarmService.send(template);
    }

    public ReservationBrokerDto selectReservation(int revNo) {
        return reservationRepository.selectReservation(revNo);
    }

    public void approveReservation(int revNo) {
        ReservationBrokerDto reservationBrokerDto = reservationRepository.selectReservation(revNo);
        long receiverNo = reservationBrokerDto.getMemberNo();
        AlarmTemplate<Integer> template
                = AlarmTemplate.generateApproveReservationTemplate(receiverNo, reservationBrokerDto.getAgentName(), revNo);
        alarmService.send(template);
        reservationRepository.approveReservation(revNo);
    }

    public void cancelReservation(int revNo) {
        ReservationBrokerDto reservationBrokerDto = reservationRepository.selectReservation(revNo);
        long receiverNo = reservationBrokerDto.getMemberNo();
        AlarmTemplate<Integer> template
                = AlarmTemplate.generateCancelReservationTemplate(receiverNo, reservationBrokerDto.getAgentName(), revNo);
        alarmService.send(template);
        reservationRepository.cancelReservation(revNo);
    }

}
