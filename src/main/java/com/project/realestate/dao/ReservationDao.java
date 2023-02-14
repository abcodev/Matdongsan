package com.project.realestate.dao;


import com.project.realestate.dto.ReservationDateFilter;
import com.project.realestate.vo.ReservationBroker;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class ReservationDao {

    private final SqlSession sqlSession;

    public int reservationEnroll(ReservationDateFilter reqFilter) {
        return sqlSession.insert("reservationMapper.reservationEnroll",reqFilter);
    }

    public long memberNoOfEstate(String agentNo) {
        return sqlSession.selectOne("reservationMapper.memberNoOfEstate",agentNo);
    }

    public String memberNoOfReservation(long memberNo) {
        return sqlSession.selectOne("reservationMapper.memberNoOfReservation",memberNo);
    }

    public ReservationBroker selectReservation(int revNo){
        return sqlSession.selectOne("reservationMapper.selectReservation", revNo);
    }

    // 예약승인
    public int approveReservation(int revNo){
        return sqlSession.update("reservationMapper.updateReservation", revNo);
    }

    //예약 취소
    public int cancelReservation(int revNo){
        return sqlSession.update("reservationMapper.cancelReservation", revNo);
    }







}
