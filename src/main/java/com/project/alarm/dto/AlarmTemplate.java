package com.project.alarm.dto;

import com.project.alarm.type.AlarmType;
import com.project.chat.dto.ChatJoinMember;
import com.project.member.type.MemberGrade;
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

    public AlarmTemplate(long memberNo, AlarmType alarmType) {
        this.memberNo = memberNo;
        this.alarmType = alarmType;
    }

    public static AlarmTemplate generateTestTemplate(long memberNo, String targetNo) {
        return new AlarmTemplate(
                memberNo,
                AlarmType.TEST,
                targetNo,
                "테스트 알림 제목",
                "테스트 테스트 테스트 테스트"
        );
    }

    public static AlarmTemplate generateNewChatMessageTemplate(ChatJoinMember receiver, String senderName) {
        AlarmTemplate template = new AlarmTemplate(receiver.getMemberNo(), AlarmType.NEW_CHAT_MESSAGE);
        if (receiver.getGrade() == MemberGrade.ADMIN) {
            template.setTitle("1:1 문의");
            template.setContents(senderName + " 의 1:1 문의가 도착했습니다.");
            template.setTargetNo(receiver.getChatRoomNo());
        } else {
            template.setTitle("1:1 문의 답변");
            template.setContents("1:1 문의에 새로운 답변이 도착했습니다.");
            template.setTargetNo(receiver.getChatRoomNo());
        }
        return template;
    }
}
