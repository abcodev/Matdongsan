package com.project.alarm.vo;

import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.type.AlarmType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.time.LocalDateTime;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Alarm {

    private long alarmNo;
    private long memberNo;
    private AlarmType alarmType;
    private String targetNo;
    private boolean isRead = false;
    private boolean isDeleted = false;
    private String title;
    private String contents;
    private Timestamp createdDate;

    public static Alarm of(AlarmTemplate template) {
        return Alarm.builder()
                .memberNo(template.getMemberNo())
                .alarmType(template.getAlarmType())
                .targetNo(template.getTargetNo())
                .title(template.getTitle())
                .contents(template.getContents())
                .createdDate(Timestamp.valueOf(LocalDateTime.now()))
                .build();
    }
}
