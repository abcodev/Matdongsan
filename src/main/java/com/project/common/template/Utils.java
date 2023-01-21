package com.project.common.template;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Utils {

    static public String saveFile(String path, MultipartFile file) {
        try {
            String originName = file.getOriginalFilename(); // 원본 파일명 뽑기
            String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()); // 시간 형식을 문자열로 뽑아오기
            int ranNum = (int) (Math.random() * 90000 + 10000); // 뒤에 붙을 5자리 랜덤값 뽑기
            String ext = originName.substring(originName.lastIndexOf(".")); // 원본파일명으로부터 확장자명 뽑기
            String changeName = currentTime + ranNum + ext; // 다 이어붙이기

            file.transferTo(new File(path + changeName));
            return changeName;
        } catch (IOException ex) {
            throw new RuntimeException("파일 업로드 실패", ex);  // cause -> Stack
        }
    }
}
