package com.project.restaurant.service;

import com.project.common.Utils;
import com.project.common.template.PageInfoCombine;
import com.project.restaurant.dao.RestaurantDao;
import com.project.restaurant.dto.RestaurantListFilter;
import com.project.restaurant.dto.RestaurantListRequest;
import com.project.restaurant.dto.RestaurantListResponse;
import com.project.restaurant.vo.Hashtag;
import com.project.restaurant.vo.ResHashtag;
import com.project.restaurant.vo.ResImg;
import com.project.restaurant.vo.Restaurant;
import org.apache.commons.fileupload.FileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
public class RestaurantServiceImpl implements RestaurantService {

    public static final String webPath = "/resources/images/";
    private static final int DEFAULT_RES_SIZE = 12;
    private final RestaurantDao restaurantDao;
    private final RestaurantCrawlingService restaurantCrawlingService;


    @Autowired
    public RestaurantServiceImpl(RestaurantDao restaurantDao, RestaurantCrawlingService restaurantCrawlingService) {
        this.restaurantDao = restaurantDao;
        this.restaurantCrawlingService = restaurantCrawlingService;
    }

    @Override
    public int selectResListCount() {
        return 0;
    }

    @Override
    public RestaurantListResponse selectList(RestaurantListRequest request) {
        RestaurantListFilter filter = RestaurantListFilter.from(request);
        int count = restaurantDao.selectResListCount(filter);
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, request.getCurrentPage(), DEFAULT_RES_SIZE);
        List<Restaurant> result = restaurantDao.selectResList(pageInfoCombine, filter);
        result.forEach(this::updateImageIfEmpty);
        return new RestaurantListResponse(result, pageInfoCombine);
    }

    private void updateImageIfEmpty(Restaurant restaurant) {
        if (Objects.isNull(restaurant.getResImgUrl()) || restaurant.getResImgUrl().isEmpty()) {
            String imageUrl = restaurantCrawlingService.findImage(restaurant.getResName());
            restaurantDao.updateImage(restaurant.getResNo(), imageUrl);
            restaurant.setImageUrl(imageUrl);
        }
    }

    @Override
    public List<String> selectStateList() {
        return restaurantDao.selectStateList();
    }

    @Override
    public List<Hashtag> selectHashtagList() {
        return restaurantDao.selectHashtagList();
    }

    @Override
    public void restaurantInsert(MultipartFile file, Restaurant restaurant , HttpSession session,List<String> hashTagId) {
        //원본파일네임이 넘어왔는지 빈칸인지 검사
            String savePath = session.getServletContext().getRealPath("/resources/images/restaurant/"); // 업로드 하고자하는 물리적인 위치 알아내기
            String changeName = Utils.saveFile(file);
            System.out.println(restaurant.getAddress());
            try {
                file.transferTo(new File( savePath+ changeName)); // 경로와 수정파일명을 합쳐서 업로드하기


                restaurant.setImageUrl("http://localhost:8070/Matdongsan/resources/images/restaurant/" + changeName);
                String resNo = restaurantDao.resInsert(restaurant);

                ResImg resImg = new ResImg();
                resImg.setChangeName(changeName);
                resImg.setOriginName(file.getOriginalFilename());
                resImg.setResNo(resNo);



                for(int i = 0; i<hashTagId.size();i++){
                    ResHashtag resHashtag = new ResHashtag();
                    resHashtag.setHashtagId(hashTagId.get(i));
                    resHashtag.setResNo(resNo);
                    resHashtag.setMemberNo("1");
                    restaurantDao.resHashtagInsert(resHashtag);
                }

                restaurantDao.resInsertImg(resImg);

            } catch (IllegalStateException | IOException e) {
                System.out.println("파일 업로드 오류");
            }
        }



    @Override
    public Restaurant restaurantDetail(String resNo) {
        return restaurantDao.restaurantDetail(resNo);
    }


    @Override
    public List<String> resHashtagByAdmin() {
        return restaurantDao.resHashtagByAdmin();
    }



    }

