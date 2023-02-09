package com.project.redis.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.RedisStandaloneConfiguration;
import org.springframework.data.redis.connection.lettuce.LettuceConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.repository.configuration.EnableRedisRepositories;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.jdbc.core.JdbcTemplate;

@Configuration
public class RedisConfig {

    // Redis Server -> Embedded Redis 로 띄워놨고
    // 거기랑 코드상에서 대화를 하려면 Redis Client 가 코드상에 존재해야함
    // Redis Client 역할을 대신 해주는 라이브러리가 Lettuce 가 기본적으로 사용되고 Spring 에서는 (Jedis)
    // Lettuce 는 JDBC 같은 역할을 해줌.
    // Redis Client(Lettuce) 에서는 RedisTemplate(JdbcTemplate) 을 통해서 쉽게 Redis Server 에 커맨드를 전달할 수 있다.

    @Bean
    public RedisConnectionFactory redisConnectionFactory() {
        // RedisStandaloneConfiguration = DataSource
        RedisStandaloneConfiguration redisStandaloneConfiguration = new RedisStandaloneConfiguration("localhost", 6379);

        // LettuceConnectionFactory = Jdbc~~~
        return new LettuceConnectionFactory(redisStandaloneConfiguration);
    }

    @Bean
    public RedisTemplate<Long, String> redisTemplate(RedisConnectionFactory redisConnectionFactory) {
        RedisTemplate<Long, String> template = new RedisTemplate<>();
        template.setConnectionFactory(redisConnectionFactory);
        template.setValueSerializer(new StringRedisSerializer());
        return template;
    }

}
