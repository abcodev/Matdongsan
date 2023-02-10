package com.project.redis.interestrealestate;

import lombok.RequiredArgsConstructor;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
@RequiredArgsConstructor
public class InterestRealEstateRedisRepository {

    /**
     *  ZSET 은 (MEMBER - SCORE)
     *   MEMBER 는 식별자 - estateNo
     *   SCORE 는 숫자 - 조회수
     *
     *   SCORE 를 기준으로 자동으로 정렬해줌
     */

    private final RedisTemplate<String, String> redisTemplate;
    private static final String INTEREST_REAL_ESTATE_REDIS_KEY = "interest_real_estate";

    public void addIfAbsent(String estateNo) {
        redisTemplate.opsForZSet().addIfAbsent(INTEREST_REAL_ESTATE_REDIS_KEY, estateNo, 0);
    }

    public void incrementScore(String estateNo) {
        redisTemplate.opsForZSet().incrementScore(INTEREST_REAL_ESTATE_REDIS_KEY, estateNo, 1);
    }

    public Set<String> findTopN(int n) {
        return redisTemplate.opsForZSet().reverseRange(INTEREST_REAL_ESTATE_REDIS_KEY, 0, n - 1);
    }

}
