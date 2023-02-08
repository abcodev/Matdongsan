package com.project.realestate.service;

import com.project.realestate.dao.ReservationDao;
import com.project.realestate.dto.ReservationDateFilter;
import com.project.realestate.dto.ReservationRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReservationServiceImpl implements ReservationService{

    private final ReservationDao reservationDao;

    @Override
    public void reservationEnroll(ReservationRequest req){
        ReservationDateFilter reqFilter = ReservationDateFilter.filter(req);
        reservationDao.reservationEnroll(reqFilter);
    }
}
