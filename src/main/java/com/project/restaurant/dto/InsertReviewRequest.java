package com.project.restaurant.dto;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Data
public class InsertReviewRequest {
    private String resNo;
    private int score;
    private List<String> hashtags;
    private String contents;
    private List<MultipartFile> files;
}
