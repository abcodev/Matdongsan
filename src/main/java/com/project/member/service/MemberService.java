package com.project.member.service;

import com.project.client.oauth.OAuthClient;
import com.project.client.oauth.OAuthUser;
import com.project.client.oauth.service.OAuthClientService;
import com.project.member.dao.MemberDao;
import com.project.member.dto.MemberDto;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.HashMap;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final OAuthClientService oAuthClientService;
    private final MemberDao memberDao;
    private final SqlSessionTemplate sqlSession;

    public Member login(HttpSession session, String provider, String code, String state) {
        OAuthClient oAuthClient = oAuthClientService.getClient(provider);
        OAuthUser oAuthUser = oAuthClient.getUserProfile(session, code, state);

        Member member = Member.of(oAuthUser);
        if (memberDao.exist(oAuthUser.getProvider(), oAuthUser.getId())) {
            memberDao.insertMember(member);
        }
        return memberDao.select(member.getProvider(), member.getProviderId());


    }

    public MemberDto loginMember(MemberDto m){

        MemberDto loginMember = memberDao.loginMember(sqlSession, m);

        return loginMember;
    }

    public int updateMember(MemberDto m) {
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

}





