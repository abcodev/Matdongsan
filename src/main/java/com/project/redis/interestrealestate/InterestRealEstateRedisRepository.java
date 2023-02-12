package com.project.redis.interestrealestate;

import lombok.RequiredArgsConstructor;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
@RequiredArgsConstructor
public class InterestRealEstateRedisRepository {

    /*
        ZSET 은 (MEMBER - SCORE)
        MEMBER 는 식별자 - EstateNo
        SCORE 는 숫자 - 조회수

        SCORE 를 기준으로 자동으로 정렬해줌
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

    /*
     * Embedded Redis
     *      -> Spring 을 실행시킬 때 자동으로 같이 실행되는데 127.0.0.1 의 6379 포트로 실행 (Redis Server)
     *      -> 1. 코드상에서 명령어 보내기 : Lettuce 라는 Redis Client 이용 -> RedisTemplate 을 제공
     *      -> 2. 직접 터미널 명령어 보내기 : MAC 에 redis-cli 라는 Redis Client 를 설치 -> 127.0.0.1 의 6379 포트로 접속
     *
     *    -> 프로그램 vs 프로세스
     *    -> 프로그램은 설치되어서 Disk(HDD, SSD) 에 들어있는 상태
     *    -> 프로세스는 실행중인 프로그램 -> 메모리(RAM)에 올라가있다.
     *
     *    -> 하나의 컴퓨터에서는 여러개의 프로세스가 동작 할 수있음
     *    -> 여러 프로세스가 동작하는데 각각 서로를 구분 하는게 -Port (Spring 8070, Oracle 1251, Redis 6379)
     *
     *    -> Spring 이 실행되면 8070 에서 실행되는 프로세스가 되고 메모리를 할당 받음
     *       그 메모리 안에서 같이 실행되는 구조를 가지는게 Embedded H2, Embedded Redis
     *
     *  Redis -> 독립적인 메모리를 할당 받아서 실행되는 형태의 Redis
     *
     *  Oracle Docker 가 실행되고 있음. -> Oracle Server
     *  이런 도구가 Oracle Client.
     *  코드상에서 JDBC, MyBatis -> Oracle Client.
     */

}
