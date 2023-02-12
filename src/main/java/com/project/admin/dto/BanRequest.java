package com.project.admin.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BanRequest {

    private long memberNo;
    private int banPeriod;

    public LocalDateTime periodToLocalDateTime() {
        if (banPeriod == -1) {
            return LocalDateTime.now().plusYears(100);
        }
        return LocalDateTime.now().plusDays(banPeriod);
    }

}
