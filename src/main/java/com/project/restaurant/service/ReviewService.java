package com.project.restaurant.service;

import com.project.common.template.Utils;
import com.project.member.vo.Member;
import com.project.restaurant.dao.HashtagDao;
import com.project.restaurant.dao.ResHashtagDao;
import com.project.restaurant.dao.RestaurantDao;
import com.project.restaurant.dao.ReviewDao;
import com.project.restaurant.dto.InsertReviewRequest;
import com.project.restaurant.dto.ResHashtagDto;
import com.project.restaurant.dto.ReviewAndMemberDto;
import com.project.restaurant.vo.Hashtag;
import com.project.restaurant.vo.ResHashtag;
import com.project.restaurant.vo.ResImg;
import com.project.restaurant.vo.Review;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.ServletContext;
import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

import static org.apache.ibatis.ognl.DynamicSubscript.first;

@Service
@RequiredArgsConstructor
public class ReviewService {

    private final ReviewDao reviewDao;
    private final RestaurantDao restaurantDao;
    private final HashtagDao hashtagDao;
    private final ResHashtagDao resHashtagDao;
    private final ServletContext servletContext;

    /**
     *
     */
    @Transactional
    public void create(Member member, InsertReviewRequest req) {
        Review review = Review.of(member, req);
        int revNo = reviewDao.insertReview(review);

        // HashTag 등록
        req.getHashtags().forEach(hashtag -> {
            Hashtag hashtagEntity = hashtagDao.select(hashtag);
            ResHashtag resHashtag = new ResHashtag(member, req, revNo, hashtagEntity);
            resHashtagDao.insert(resHashtag);
        });

        // Image 저장
        String savePath = servletContext.getRealPath("/resources/images/restaurant/");
        req.getFiles().forEach(file -> {
            String savedFileName = Utils.saveFile(savePath, file);
            ResImg resImg = ResImg.builder()
                    .resNo(req.getResNo())
                    .changeName(savedFileName)
                    .originName(file.getOriginalFilename())
                    .revNo(revNo)
                    .memberNo(member.getMemberNo())
                    .build();
            restaurantDao.resInsertImg(resImg);
        });
    }

    public List<ReviewAndMemberDto> selectReviewList(String resNo) {
        return reviewDao.selectReviewList(resNo);
    }

    public List<String> retrieveTop2Hashtag(String resNo, List<String> excludeHashtags) {
        List<ResHashtagDto> resHashtagList = resHashtagDao.selectByResNo(resNo);

        Map<String, Long> hashtagCount = resHashtagList.stream() // List -> Stream
                .map(ResHashtagDto::getHashtag) // ResHashtagDto -> HashTag
                .filter(hashtag -> !excludeHashtags.contains(hashtag)) // HashTag 중에 exclude 에 포함 안된거 필터
                .collect(Collectors.groupingBy(Function.identity(), Collectors.counting()));
                    // HashTag 기준으로 Grouping -> [Key, Value] -> [HashTag, Counting] (Group By)

        return hashtagCount.entrySet()
                .stream() // Map<String, Long> -> Stream
                .sorted(Map.Entry.comparingByValue(Comparator.reverseOrder())) // Value(Counting) 을 기준으로 내림차순 정렬
                .map(Map.Entry::getKey) // Entry<String, Long> -> [Key, Value] -> [HashTag, Counting] -> HashTag
                .limit(2) // 상위 2개 잘라내기
                .collect(Collectors.toList());
    }
}

