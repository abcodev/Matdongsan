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

    /*
        Redis Server -> Embedded Redis 로 띄워놨음
        여기랑 대화를 하려면 Redis Client 가 코드에 존재해야함
        Redis Client 역할을 대신 해주는 라이브러리 Lettuce 가 기본적으로 사용되고 (Spring 에서는 Jedis)
        Lettuce 는 JDBC 같은 역할을 해준다
        Redis Client(Letture) 로 RedisTemplate을 통해서 Redis Server 에 커맨드를 전달 할 수 있음
     */

    /*
     *  Redis 는 NoSQL 중에 하나 / 데이터를 읽고 쓰는 속도가 빠름
     *  but, 영속성을 보장하지 않기 때문에 날라가도 괜찮은 데이터를 주로 보관함 + 혹은 캐시(*)
     *  많이본, 최근본 같은경우에는 좀 잘어울린다고 판단했고
     *   -> 읽기 & 쓰기 횟수를 비교했을때 쓰기 비중이 좀 높은 동작이라고 봤음.
     *   -> 그래서 RDB 보다 NoSQL 을 쓰는게 좀 더 잘 어울린다고 생각하였음.
     *
     *  많이본 -> ZSet 이라는 자료구조 (Sorted Set)
     *      - Member:Score 형태로 묶인 데이터가 들어가고
     *      - Member : Key 값이어서 아무데이터나 넣을 수 있다.
     *      - Score : 정수(이 값을 기준으로 정렬)
     *      -> 레디스가 Score 를 기준으로 정렬을 해주기때문에..
     *      -> 사용자가 API 를 호출할 때마다 매번 정렬할 필요가 없기 때문에 성능측면에서 훌륭하다.
     *  최근본 -> List 라는 자료구조
     */

    /*
     *  RedisConnectionFactory : Redis Server 와 연결하는 부분.
     *                          결국 연결해준다는건 Redis Client 있는 얘기가 된다.
     *                          Redis Client 역할을 해주는게 Lettuce 임.
     *                          Redis Server 와 Client 가 연결이 되었으니,
     *                          그 통로를 통해서 커맨드를 날려서 Redis Server 에서 실행되도록 해야한다.
     *  RedisTemplate : 그 커맨드를 추상화(편리한 메소드로 만들어놓음) 해놓은게 RedisTemplate (SqlSessionTemplate, JdbcTemplate...)
     */

    @Bean
    public RedisConnectionFactory redisConnectionFactory() {
        // RedisStandaloneConfiguration = DataSource
        RedisStandaloneConfiguration redisStandaloneConfiguration = new RedisStandaloneConfiguration("localhost", 6379);

        // LettuceConnectionFactory = Jdbc~~~
        return new LettuceConnectionFactory(redisStandaloneConfiguration);
    }

    @Bean
    public RedisTemplate<Long, String> longKeyRedisTemplate(RedisConnectionFactory redisConnectionFactory) {
        RedisTemplate<Long, String> template = new RedisTemplate<>();
        template.setConnectionFactory(redisConnectionFactory);
        template.setValueSerializer(new StringRedisSerializer());
        return template;
    }

    @Bean
    public RedisTemplate<String, String> stringKeyRedisTemplate(RedisConnectionFactory redisConnectionFactory) {
        RedisTemplate<String, String> template = new RedisTemplate<>();
        template.setConnectionFactory(redisConnectionFactory);
        template.setKeySerializer(new StringRedisSerializer());
        template.setValueSerializer(new StringRedisSerializer());
        return template;
    }


}
