package com.project.alarm.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import java.io.IOException;
import java.util.*;

/*
    SseEmitter(Spring)

    subscriber -> 1) 부동산 찜한 사용자, 2) 자유게시판 게시자, 3) 1:1채팅 이용하는 사용자, 4) 관리자
    Trigger  1) 부동산 찜할때 해제할 때 / 관심지역구에 해당하는 부동산 정보가 업데이트 되면 알림(*개 업데이트 됐습니다 형식)
             2) 내 글에 댓글 달릴 때
             3) 1:1 채팅 관리자 답변이 왔을 때
             4) 관리자에게 새로운 1:1문의(채팅방이 생성) 왔을 때 / 새로운 채팅 도착시 알림

    1. 사용자는 로그인하면 sse 연결을 통해 실시간 알림을 받음
    2. 각 도메인 로직에서 alarm trigger 가 발생하면 -> db ALARM 테이블에 row 추가
                                            -> sse 통해 event 발생 (MEMBER_NO)
    3. sse 를 통해 알림을 받는면 사용자는 본인의 MEMBER_NO와 비교 -> 같으면 ajax 로 ALARM 을 읽어와 갱신


    SSE 연결을 통해서 알람을 받겠다고 구독하는 행위
    SSE -> 서버 to 클라이언트 스트림을 유지시켜놓음.

    WebSocket : 양방향 (서버, 클라이언트 모두 언제든지 메시지를 보낼수있음)
    SSE(Sever Sent Event) : 단방향 (서버는 클라이언트에게 언제든지 메시지를 보낼수 있음. 반대 x)
    - WebSocket 은 HTTP 가 아니다. WS:// 이런 형태를 사용함
    - SSE 는 HTTP 베이스로 이루어져있어서 구조자체가 익숙하고 간편하다.
    - SSE 는 WebSocket 보다 가벼움.
 */




@Slf4j
@Service
public class AlarmEventProducer {

    /*

     */

    private final Map<Long, List<SseEmitter>> subscribers;
    // Long : MemberNo , List<SseEmitter>(통로) : 구독 리스트

    public AlarmEventProducer() {
        this.subscribers = new HashMap<>();
    }

    // send는 떠넘기기
    public void produce(long memberNo) { // memberNo 만 보내면 알람이 왔다고 메세지가 가는 구조 // 여길 호출하면 알람을 받겠다고 기다리는
        List<SseEmitter> emitters = subscribers.getOrDefault(memberNo, List.of());
        List<Integer> removeIndex = new ArrayList<>();

        for (int i = 0; i < emitters.size(); ++i) {
            try {
                emitters.get(i).send(SseEmitter.event()
                        .name("realtime_alarm")
                        .data(memberNo));
            } catch (Exception ignored) {
                removeIndex.add(i);
            }
        }

        List<SseEmitter> alive = new ArrayList<>();
        for (int i = 0; i < emitters.size(); ++i) {
            if (!removeIndex.contains(i)) {
                alive.add(emitters.get(i));
            }
        }
        subscribers.put(memberNo, alive);
    }

    public SseEmitter subscribe(long memberNo) { // 여기 memberNo 호출하면 알람이 가게되고
        SseEmitter subscriber = new SseEmitter();
        try {
            subscriber.send(SseEmitter.event()
                    .name("connect_message")
                    .data(memberNo));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        if (subscribers.containsKey(memberNo)) {
            subscribers.get(memberNo).add(subscriber);
        } else {
            List<SseEmitter> emitters = new ArrayList<>();
            emitters.add(subscriber);
            subscribers.put(memberNo, emitters);
        }
        return subscriber;
    }

}
