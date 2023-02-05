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

    public AlarmTemplate(long memberNo) {
        this.memberNo = memberNo;
    }

    public static AlarmTemplate generateNewChatMessageTemplate(String roomNo, long receiverNo, String senderName) {
        AlarmTemplate template = new AlarmTemplate(receiverNo);
        if (receiverNo == 1) {
            template.setTitle("1:1 문의");
            template.setAlarmType(AlarmType.NEW_QUESTION);
            template.setContents(senderName + " 의 1:1 문의가 도착했습니다.");
            template.setTargetNo(roomNo);
        } else {
            template.setTitle("1:1 문의 답변");
            template.setAlarmType(AlarmType.NEW_ANSWER);
            template.setContents("1:1 문의에 새로운 답변이 도착했습니다.");
            template.setTargetNo(roomNo);
        }
        return template;
    }
}
