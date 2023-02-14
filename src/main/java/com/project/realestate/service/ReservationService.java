package com.project.realestate.service;

import com.project.realestate.dto.ReservationRequest;
import com.project.realestate.vo.ReservationBroker;

public interface ReservationService {
    void reservationEnroll(ReservationRequest req);

    public ReservationBroker selectReservation(int revNo);

    public void approveReservation(int revNo);

    public void cancelReservation(int revNo);
}
