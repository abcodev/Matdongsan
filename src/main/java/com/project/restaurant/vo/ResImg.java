package com.project.restaurant.vo;

import com.project.common.template.Utils;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ResImg {

    private String imgNo;
    private String reviewNo;
    private String memberNo;
    private String resNo;
    private String imageLevel;
    private String originName;
    private String changeName;

}
