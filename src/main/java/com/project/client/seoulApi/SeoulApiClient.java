package com.project.client.seoulApi;

import java.util.Arrays;
import java.util.List;

import com.project.client.seoulApi.dto.RealEstateSellDto;
import com.project.client.seoulApi.dto.RealEstateSellResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class SeoulApiClient {

    private final RestTemplate restTemplate;
    private static final String SEOUL_API_BASE_URL = "http://openAPI.seoul.go.kr:8088";
    private final String apiKey = "685649547661686835364a424c4871";

    // Scheduling
    public List<RealEstateSellDto> getRealEstateSellList() {
        String serviceName = "tbLnOpendataRtmsV";
        String url = this.generateUrl(serviceName, 1, 1000);

        try {
            RealEstateSellResponse response = restTemplate.getForObject(url, RealEstateSellResponse.class);
            if (response == null) {
                throw new RuntimeException(serviceName + " 조회 실패!");
            }
            return Arrays.asList(response.getSellList().getSellList());
        } catch (Exception ex) {
            throw new RuntimeException(serviceName + " 조회 실패!");
        }
    }

    private String generateUrl(String serviceName, int start, int end) {
        StringBuilder urlBuilder = new StringBuilder();
        urlBuilder.append(SEOUL_API_BASE_URL);
        urlBuilder.append("/").append(apiKey);
        urlBuilder.append("/").append("json");
        urlBuilder.append("/").append(serviceName);
        urlBuilder.append("/").append(start);
        urlBuilder.append("/").append(end);
        return urlBuilder.toString();
    }

}