package com.project.alarm.dto;

import com.project.alarm.type.AlarmType;
import lombok.AllArgsConstructor;
import lombok.Data;

/*
    어디서 보내는 알람인지 (어느 도메인(리소스) 에서 보내는 알람인지)
    부동산 찜, 관심구, 자유게시판, 1:1 문의 (채팅)
    AlarmType + TargetNo -> 이동시킬 리소스 찾기
 */

@Data
@AllArgsConstructor
public class AlarmTemplate <T> {

    private long memberNo;
    private AlarmType alarmType;
    private T targetNo;
    private String title;
    private String contents;

    public AlarmTemplate(long memberNo) {
        this.memberNo = memberNo;
    }

    public static AlarmTemplate<String> generateNewChatMessageTemplate(String roomNo, long receiverNo, String senderName) {
        AlarmTemplate<String> template = new AlarmTemplate<>(receiverNo);
        if (receiverNo == 1) {
            template.setTitle("1:1 문의");
            template.setAlarmType(AlarmType.NEW_QUESTION);
            template.setContents(senderName + " 님의 1:1 문의가 도착했습니다.");
            template.setTargetNo(roomNo);
        } else {
            template.setTitle("1:1 문의 답변");
            template.setAlarmType(AlarmType.NEW_ANSWER);
            template.setContents("1:1 문의에 새로운 답변이 도착했습니다.");
            template.setTargetNo(roomNo);
        }
        return template;
    }

    public static AlarmTemplate<Integer> generateNewReplyTemplate(long receiverNo, int fNo) {
        AlarmTemplate<Integer> template = new AlarmTemplate<>(receiverNo);
        template.setTitle("자유게시판 알림");
        template.setAlarmType(AlarmType.NEW_REPLY);
        template.setContents("내 글에 댓글이 등록됐습니다.");
        template.setTargetNo(fNo);
        return template;
    }

    public static AlarmTemplate<Integer> generateNewQnaMessageTemplate(long receiverNo, int qNo) {
        AlarmTemplate<Integer> template = new AlarmTemplate<>(receiverNo);
        template.setTitle("질문게시판 알림");
        template.setAlarmType(AlarmType.NEW_BOARD_ANSWER);
        template.setContents("내 질문에 답변이 등록됐습니다.");
        template.setTargetNo(qNo);
        return template;
    }

    public static AlarmTemplate<String> generateNewReservation(long receiverNo, String senderName, String agentNo) {
        AlarmTemplate<String> template = new AlarmTemplate<>(receiverNo);
        template.setTitle("부동안 예약 알림");
        template.setAlarmType(AlarmType.NEW_RESERVATION_BROKER);
        template.setContents(senderName + "님이 예약을 신청하였습니다.");
        template.setTargetNo(agentNo);
        return template;
    }

    public static AlarmTemplate<Integer> generateApproveReservationTemplate(long receiverNo, String agentName, int revNo) {
        AlarmTemplate<Integer> template = new AlarmTemplate<>(receiverNo);
        template.setTitle("부동산 예약 알림");
        template.setAlarmType(AlarmType.RESERVATION_APPROVE);
        template.setContents(agentName + " 방문 예약이 승인되었습니다.");
        template.setTargetNo(revNo);
        return template;
    }

    public static AlarmTemplate<Integer> generateCancelReservationTemplate(long receiverNo, String agentName, int revNo) {
        AlarmTemplate<Integer> template = new AlarmTemplate<>(receiverNo);
        template.setTitle("부동산 예약 알림");
        template.setAlarmType(AlarmType.RESERVATION_APPROVE);
        template.setContents(agentName + " 방문 예약이 취소되었습니다.");
        template.setTargetNo(revNo);
        return template;
    }

    public static AlarmTemplate<String> generateNewBrokerAcceptTemplate(long receiverNo, String agentNo) {
        AlarmTemplate<String> template = new AlarmTemplate<>(receiverNo);
        template.setTitle("회원 정보 알림");
        template.setAlarmType(AlarmType.NEW_BROKER_ACCEPT);
        template.setContents("부동산 회원 승인이 완료 됐습니다.");
        template.setTargetNo(agentNo);
        return template;
    }

    public static AlarmTemplate<String> generateNewBrokerRejectTemplate(long receiverNo, String agentNo) {
        AlarmTemplate<String> template = new AlarmTemplate<>(receiverNo);
        template.setTitle("회원 정보 알림");
        template.setAlarmType(AlarmType.NEW_BROKER_REJECT);
        template.setContents("부동산 회원 신청이 거절되었습니다.");
        template.setTargetNo(agentNo);
        return template;
    }

}
