package com.project.redis.recentrealestate;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *  Redis 를 기준으로
 *   - 데이터를 쌓는쪽 -> 부동산의 상세정보 페이지를 이동하는 시점(RealEstateController -> Detail API)
 *   - 데이터를 읽어가는쪽 -> 메인 페이지 (MainController -> MainPage)
 */

@Service
@RequiredArgsConstructor
public class RecentRealEstateRedisService {

    private final RecentRealEstateRedisRepository recentRealEstateRedisRepository;

    public void push(long memberNo, String estateNo) {
        /*
         *  Remove -> Push
         *    만약 현 상태가 (1, 2, 3, 4, 5) 일때
         *    내가 3번을 다시 보면
         *    (3, 1, 2, 4, 5) 가 되어야하는데
         *    Remove 를 하지 않으면 (3, 1, 2, 3, 4) 가 돼 버림
         *    그래서 Push 하기전에 중복된 Element 를 모두 지우는 커맨드를 추가
         */
        recentRealEstateRedisRepository.remove(memberNo, estateNo);
        recentRealEstateRedisRepository.push(memberNo, estateNo);
    }

    public List<String> findTopN(long memberNo, int n) {
        return recentRealEstateRedisRepository.findTopN(memberNo, n);
    }

}
