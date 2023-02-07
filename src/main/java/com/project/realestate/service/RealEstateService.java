package com.project.realestate.service;

import com.project.board.vo.FreeBoard;
import com.project.member.vo.Member;
import com.project.realestate.dto.*;
import com.project.realestate.vo.Interest;
import com.project.realestate.vo.RealEstateAgent;
import com.project.realestate.vo.RealEstateRent;
import com.project.realestate.vo.RealEstateSell;
import com.project.restaurant.vo.Restaurant;

import java.util.List;
import java.util.Map;

public interface RealEstateService {

    public int selectListCount();

    public RealEstateRentListResponse selectAllList(RealEstateRentListRequest req);

    public List<FreeBoard> selectFboard(String state);

    public List<RealEstateRent> chartList(String state);


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
}
