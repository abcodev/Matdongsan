package com.project.client.seoulApi;


import com.project.client.seoulApi.dto.RentHouseDto;
import com.project.client.seoulApi.dto.RentHouseResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Component
@RequiredArgsConstructor
public class ApiTemplate {
    private final RestTemplate restTemplate;
    private static final String apiUrl = "http://openapi.seoul.go.kr:8088";
    private final String apiKey = "6d504f496761686137326a50747377";

    // Scheduling
    public List<RentHouseDto> getRentHouseList() {
        String serviceName = "tbLnOpendataRentV";
        String url = this.generateUrl(serviceName, 1, 1000);

        try {
            RentHouseResponse response = restTemplate.getForObject(url, RentHouseResponse.class);
            if (response == null) {
                throw new RuntimeException(serviceName + " 조회 실패!");
            }
            return Arrays.asList(response.getHouseList().getHouseList());
        } catch (Exception ex) {
            throw new RuntimeException(serviceName + " 조회 실패!!");
        }
    }

    private String generateUrl(String serviceName, int start, int end) {
        StringBuilder urlBuilder = new StringBuilder();
        urlBuilder.append(apiUrl);
        urlBuilder.append("/").append(apiKey);
        urlBuilder.append("/").append("json");
        urlBuilder.append("/").append(serviceName);
        urlBuilder.append("/").append(start);
        urlBuilder.append("/").append(end);
        return urlBuilder.toString();
    }
}
