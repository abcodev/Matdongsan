package com.project.redis.recentrealestate;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RecentRealEstateRedisService {

    private final RecentRealEstateRedisRepository recentRealEstateRedisRepository;

    public void push(long memberNo, String estateNo) {
        recentRealEstateRedisRepository.remove(memberNo, estateNo);
        recentRealEstateRedisRepository.push(memberNo, estateNo);
    }

    public List<String> findTopN(long memberNo, int n) {
        return recentRealEstateRedisRepository.findTopN(memberNo, n);
    }

}
