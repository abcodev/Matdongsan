package com.project.member.service;

import com.project.client.oauth.OAuthClient;
import com.project.client.oauth.OAuthUser;
import com.project.client.oauth.service.OAuthClientService;
import com.project.member.dao.MemberDao;
import com.project.member.dto.MemberDto;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final OAuthClientService oAuthClientService;
    private final MemberDao memberDao;
    private final SqlSessionTemplate sqlSession;
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
        OAuthUser oAuthUser = oAuthClient.getUserProfile(session, code, state);

        Member member = Member.of(oAuthUser);
        if (memberDao.exist(oAuthUser.getProvider(), oAuthUser.getId())) {
            memberDao.insertMember(member);
        }
        memberDao.updateRecentAccess(member.getProvider(), member.getProviderId());
        return memberDao.select(member.getProvider(), member.getProviderId());
    }

    public MemberDto loginMember(MemberDto m){

        MemberDto loginMem = memberDao.loginMember(sqlSession, m);
        return loginMem;
    }

    public int updateMember(MemberDto m) {
        return memberDao.updateMember(sqlSession, m);
    }
}





