package com.project.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Component;
import redis.embedded.RedisServer;

/**
 *  Bean 을 생성할 때
 *  생성 후 실행할 코드 (스프링이 켜질때)
 *  Bean 을 없앨 때 실행할 코드를 작성하기 위함 (스프링이 꺼질때)
 */

@Slf4j
@Component
public class EmbeddedRedisConfig implements InitializingBean, DisposableBean {

    private RedisServer redisServer;

    @Override
    public void afterPropertiesSet() {
        redisServer = new RedisServer(6379); // Redis 포트번호 6379
        try {
            redisServer.start();
        } catch (Exception e) {
            log.error("Embedded Redis 실행 중 에러가 발생했습니다.", e);
        }
    }

    @Override
    public void destroy() {
        redisServer.stop();
    }

}
