package com.project.redis.interestrealestate;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class InterestRealEstateRedisService {

    private final InterestRealEstateRedisRepository interestRealEstateRedisRepository;

    public void increment(String estateNo) {
        interestRealEstateRedisRepository.addIfAbsent(estateNo);
        interestRealEstateRedisRepository.incrementScore(estateNo);
    }

    public List<String> findTopN(int n) {
        return new ArrayList<>(interestRealEstateRedisRepository.findTopN(n));
    }

}
