package com.project.alarm.dto;

import com.project.alarm.type.AlarmType;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class AlarmTemplate {

    private long memberNo;
    private AlarmType alarmType;
    private String targetNo;
    private String title;
    private String contents;

    public static AlarmTemplate generateTestTemplate(long memberNo, String targetNo) {
        return new AlarmTemplate(
                memberNo,
                AlarmType.TEST,
                targetNo,
                "테스트 알림 제목",
                "테스트 테스트 테스트 테스트"
        );
    }
}
