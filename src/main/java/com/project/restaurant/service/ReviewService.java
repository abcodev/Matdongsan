package com.project.restaurant.service;

import com.project.common.template.Utils;
import com.project.member.vo.Member;
import com.project.restaurant.dao.HashtagDao;
import com.project.restaurant.dao.ResHashtagDao;
import com.project.restaurant.dao.RestaurantDao;
import com.project.restaurant.dao.ReviewDao;
import com.project.restaurant.dto.InsertReviewRequest;
import com.project.restaurant.vo.Hashtag;
import com.project.restaurant.vo.ResHashtag;
import com.project.restaurant.vo.ResImg;
import com.project.restaurant.vo.Review;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.ServletContext;

@Service
@RequiredArgsConstructor
public class ReviewService {

    private final ReviewDao reviewDao;
    private final RestaurantDao restaurantDao;
    private final HashtagDao hashtagDao;
    private final ResHashtagDao resHashtagDao;
    private final ServletContext servletContext;

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
            // 파라미터 5개라 DTO 만들어서 넘겨도 될것같고..
            String savedFileName = Utils.saveFile(savePath, file);

            ResImg resImg = ResImg.builder()
                    .resNo(req.getResNo())
                    .changeName(savedFileName)
                    .originName(file.getOriginalFilename())
                    .reviewNo(String.valueOf(revNo))
                    .memberNo(String.valueOf(member.getMemberNo()))
                    .build();
            restaurantDao.resInsertImg(resImg);
        });
    }
}

/**
 * GlobalExceptionHandler
 */