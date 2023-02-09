package com.project.realestate.service;

import com.project.board.vo.FreeBoard;
import com.project.member.vo.Member;
import com.project.realestate.dto.*;
import com.project.realestate.vo.Interest;
import com.project.realestate.vo.RealEstateAgent;
import com.project.realestate.vo.RealEstateRent;

import java.util.List;

public interface RealEstateService {

    public int selectListCount();

    public RealEstateRentListResponse selectAllList(RealEstateRentListRequest req);

    public List<FreeBoard> selectFboard(String state);

    public RealEstateRent basicChart();

    public RealEstateRent chartList(String state);


    // 자치구 리스트,
   public List<RealEstateRent> searchLocalList();

   // 동 리스트
   public List<RealEstateRent> searchDongList(String state);


    public List<RealEstateMainListDto> getSellList();


    RealEstateDetailDto realEstateDetail(String estateNo);

    List<String> selectPastList(String bldgNm);

    boolean checkInterest(String estateNo, Member loginUser);

    void saveInterest(RealEstateInterestRequest req, Member loginUser);

    List<Interest> getMostInterest();

    List<RealEstateAgent> selectAgentList(String bjdongNm);

    List<RealEstateViewDto> selectViewListIn(List<String> recentEstateNoList);

    int reservationEnroll(ReservationRequest req);
}
