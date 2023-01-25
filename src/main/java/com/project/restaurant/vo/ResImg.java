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

    private int imgNo;
    private int revNo;
    private long memberNo;
    private String resNo;
    private int imageLevel;
    private String originName;
    private String changeName;

}
