package com.project.member.service;

import com.project.client.oauth.OAuthClient;
import com.project.client.oauth.OAuthToken;
import com.project.client.oauth.OAuthUser;
import com.project.client.oauth.service.OAuthClientService;
import com.project.common.template.PageInfoCombine;
import com.project.member.dao.MemberDao;
import com.project.member.dto.*;
import com.project.member.vo.Member;
import com.project.realestate.dao.InterestEstateDao;
import com.project.realestate.dao.RealEstateDao;
import com.project.realestate.dto.RealEstateInterestRequest;
import com.project.realestate.vo.Interest;
import lombok.RequiredArgsConstructor;
//import net.nurigo.java_sdk.api.Message;
//import net.nurigo.java_sdk.exceptions.CoolsmsException;
//import org.json.simple.JSONObject;
import lombok.extern.log4j.Log4j;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
@RequiredArgsConstructor
@Log4j
public class MemberService {

    private final OAuthClientService oAuthClientService;
    private final MemberDao memberDao;
    private final SqlSessionTemplate sqlSession;
    private final InterestEstateDao interestEstateDao;
    private final RealEstateDao realEstateDao;
    private static final int DEFAULT_SIZE = 10;
    /*
        sqlsession 만들지 않아도 되는 이유 (이건 jdbc 쓸 때 사용하는 방식)

        유저 - 컨트롤러 - 서비스 - 레포지토리 - 디비의 흐름으로 의존성의 방향이 한 방향이어야 함
        컨트롤러가 -> 서비스를 의존하고 -> 레포지토리를 의존함 (서비스에서는 레포지토리를 호출할수있고 서비스에서 컨트롤러는 호출할수 없음)
        이렇게 하는 이유 : 계층별로 결합도를 낮추고 언제든지 하위계층이 바뀔 수 있는 구조를 만들기 위해서

        마이바티스에서 -> SqlSessionTemplate : repository 영역을 담당하는 기술을 바꾼것
        (jdbc -> sqlsession : 기술에 종속적임
                              수정할 일이 있으면 서비스에 찾아와서 수정해야함, 상위계층이 하위계층에 종속적인 구조이기 때문에)

        Bean을 만들어둬서 가져다 쓸 수 있음 (기술에 종속된 내용은 가져다 씀)
        <bean class="org.mybatis.spring.SqlSessionTemplate" id="sqlSession"> <- 이부분
     */

    public Member login(HttpSession session, String provider, String code, String state) {
        OAuthClient oAuthClient = oAuthClientService.getClient(provider);
        OAuthToken oAuthToken = oAuthClient.getToken(session, code, state);
        OAuthUser oAuthUser = oAuthClient.getUserProfile(session, oAuthToken);

        Member member = Member.of(oAuthUser, oAuthToken);
        if (memberDao.exist(oAuthUser.getProvider(), oAuthUser.getId())) {
            memberDao.insertMember(member);
        }
        memberDao.updateToken(member.getProvider(), member.getProviderId(), oAuthToken);
        memberDao.updateRecentAccess(member.getProvider(), member.getProviderId());
        return memberDao.select(member.getProvider(), member.getProviderId());
    }



    public Member loginMember(Member m){
        Member loginMember = memberDao.loginMember(sqlSession, m);
        return loginMember;
    }


    public int updateMember(Member m) {
        return memberDao.updateMember(sqlSession, m);
    }




    public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber) {
        String api_key = "NCSOBLGT3XKTGRQB";
        String api_secret = "RKVNQQTAHQL0J3UR3VDG8GHL1TY9IUTT";
        Message coolsms = new Message(api_key, api_secret);

        // 4 params(to, from, type, text) are mandatory. must be filled
        HashMap<String, String> params = new HashMap<String, String>();
        params.put("to", userPhoneNumber);    // 수신전화번호
        params.put("from", "010-4818-2172");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
        params.put("type", "SMS");
        params.put("text", "[TEST] 인증번호는" + "["+randomNumber+"]" + "입니다."); // 문자 내용 입력
        params.put("app_version", "test app 1.2"); // application name and version

        try {
            JSONObject obj = (JSONObject) coolsms.send(params);
            System.out.println(obj.toString());
        } catch (CoolsmsException e) {
            System.out.println(e.getMessage());
            System.out.println(e.getCode());
        }

    }

    public List<Interest> getInterestList(Member m){
        return memberDao.getInterestList(sqlSession, m);
    }


    public MyPageListResponse selectList(MyPageListRequest request, Member m){
        int count = memberDao.selectListCount(sqlSession, m);
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, request.getCurrentPage(), DEFAULT_SIZE);
        List<AllBoard> result = memberDao.selectAllBoardList(sqlSession,pageInfoCombine, m);

        return new MyPageListResponse(result, pageInfoCombine);

    }

//    public boolean checkInterest(String estateNo, Member loginUser){
//        return memberDao.checkInterest(estateNo, loginUser.getMemberNo());
//    }


    public void saveInterest(RealEstateInterestRequest req, Member loginUser){
        if(req.getIsInterest()){
            interestEstateDao.insert(req.getEstateNo(), loginUser.getMemberNo());
        }else{
            interestEstateDao.delete(req.getEstateNo(), loginUser.getMemberNo());
        }
    }

    public void deleteMember(Member member) {
        OAuthClient oAuthClient = oAuthClientService.getClient(member.getProvider());
        // AccessToken 이 만료됐을 수도 있다.
        // 1. AccessToken 이 만료되었는지 확인.
        /** TODO :
            boolean isExpired = oAuthClient.checkExpiredAccessToken(member.toOAuthToken());
            if (isExpired) {
                OAuthToken freshToken = AuthClient.renewToken(member.toOAuthToken());
                member.setToken(freshToken);
            }
         */
        // 2. RefreshToken 으로 AccessToken 재발급.
        // 3. 재발급된 AccessToken 으로 요청.
        oAuthClient.unlink(member.toOAuthToken());
        memberDao.deleteMember(sqlSession, member.getMemberNo());
    }

//    public ArrayList<Interest> selectInterestList(String estateNo){
//        return memberDao.selectInterestList(sqlSession, estateNo);
//    }

}





