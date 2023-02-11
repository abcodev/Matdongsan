package com.project.redis.recentrealestate;

import lombok.RequiredArgsConstructor;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/*
    최근 본 부동산 -> Redis List 를 활용 -> Key : [ List ]
    Key : MemberNo
    List Element : EstateNo
 */

@Repository
@RequiredArgsConstructor
public class RecentRealEstateRedisRepository {

    private final RedisTemplate<Long, String> redisTemplate;

    public void push(long memberNo, String estateNo) {
        redisTemplate.opsForList().leftPush(memberNo, estateNo);
        // memberNo estateNo 넣어주고 lrem estateNo 지우고 왼쪽에 lpush 해줌
    }

    public void remove(long memberNo, String estateNo) {
        redisTemplate.opsForList().remove(memberNo, 0, estateNo);
    }

    public List<String> findTopN(long memberNo, int n) {
        return redisTemplate.opsForList().range(memberNo, 0, n - 1);
    }

}
