package com.project.realestate.service;

import com.project.realestate.dao.ReservationDao;
import com.project.realestate.dto.ReservationDateFilter;
import com.project.realestate.dto.ReservationRequest;
import com.project.realestate.vo.ReservationBroker;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReservationServiceImpl implements ReservationService{

    private final ReservationDao reservationDao;
    private final SqlSession sqlSession;

    @Override
    public void reservationEnroll(ReservationRequest req){
        ReservationDateFilter reqFilter = ReservationDateFilter.filter(req);
        reservationDao.reservationEnroll(reqFilter);
    }

    @Override
    public ReservationBroker selectReservation(int revNo){
        return reservationDao.selectReservation(revNo);
    }

    @Override
    public void approveReservation(int revNo){
        reservationDao.approveReservation(revNo);
    }

    @Override
    public void cancelReservation(int revNo){
        reservationDao.cancelReservation(revNo);
    }
}
