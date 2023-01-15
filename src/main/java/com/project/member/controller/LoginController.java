package com.project.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import com.project.client.oauth.naver.NaverLoginBO;
import com.project.member.dto.NaverMemberDto;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;


@Controller
public class LoginController {

    /* NaverLoginBO */
    private NaverLoginBO naverLoginBO;
    private String apiResult = null;

    public LoginController(NaverLoginBO naverLoginBO) {
        this.naverLoginBO = naverLoginBO;
    }


    /**
     * 로그인 페이지 이동
     */
    @RequestMapping(value = "/loginPage", method = { RequestMethod.GET, RequestMethod.POST })
    public String Login(Model model, HttpSession session){

        /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        System.out.println("네이버url : " + naverAuthUrl);
        model.addAttribute("naverUrl",naverAuthUrl);
        return "member/loginPage";
    }

    /**
     * 네이버 로그인 성공시 callback 함수 호출
     * 임시 ------(네이버 개발 페이지에서 미리 정해둔 url/http://localhost:8070/Matdongsan)
     */
    @RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
    public String callback(Model model,
                           @RequestParam String code,
                           @RequestParam String state,
                           HttpSession session
    ) throws IOException, ParseException {

        System.out.println("여기는 callback");
        OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);

        //1. 로그인 사용자 정보를 읽어온다.
        apiResult = naverLoginBO.getUserProfile(oauthToken);  //String형식의 json데이터

        //2. String형식인 apiResult를 json형태로 바꿈
        JSONParser parser = new JSONParser();
        Object obj = parser.parse(apiResult);
        JSONObject jsonObj = (JSONObject) obj;

        //3. 데이터 파싱
        //Top레벨 단계 _response 파싱
        JSONObject response_obj = (JSONObject)jsonObj.get("response");

        // 프로필 조회
        String email = (String) response_obj.get("email");
        String name = (String) response_obj.get("name");
        String profileImage = (String) response_obj.get("profile_image");





        model.addAttribute("result", apiResult);

        return "member/loginPage";
    }
}
