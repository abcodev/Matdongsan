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
        알람을 받고싶어서 구독 하는 사람 - AlarmEventProducer(알람을 보내주는 역할) - 알람을 보내는 사람

        이런걸 이벤트 스트림이라고 함
        ex) Message Queue -> Kafka, RabbitMQ 같은 역할 Queue : 한쪽으로 들어온걸 내보내주는 것
        메세지를 보내고 싶다고 하는 사람한테 받아서 반대쪽으로 내보내주는 역할

        알람을 받고 싶은 사람이 등록하는 방법?
        보내고 싶은 사람은 어떻게 보내나?
        두가지 액션이 있음

        알람을 받고싶은 사람은 컨트롤러에서 알람섭스크라이브를 구독하게됨
        sse 연결을 통해서 알람을 받겠다고 구독하는 행위
        sse -> 서버 to 클라이언트 스트림을 유지시켜놓음
        서버가 일방적으로 메세지를 보낼 수 있는 구조임(http는 1:1 요청을 한번에 응답을 계속 보낼 수 있음(요청이 있어야 응답))
        sse는 요청 한번에 응답을 계속 보낼 수 있음

        첫번째 액션: 알람을 받고싶은 사람이 프로듀서한테 알람을 받을거라고 기록함
        프로듀서한테 멤버넘버라는 애가 알람 받고싶다고 말함
        프로듀서는 누가 알람을 받고싶은지를 기록을 함(private final~ 부분에 기록함)
        누가 받고싶다?(로그인한 사용자) -> 멤버넘버가 받고싶다 뒤로 오는건 통로
        memberNo 받고싶어서 기다리고 있는 사람들 목록
        subscriber 통로를 만들어서 subscribers.put(memberNo, emitters)에 넣어둠

        이벤트를 보내고 싶은 사람? : 클라이언트가 아니라 소스코드에 있는 다른 서비스들(ex) board-service-댓글~~)
        보내는거 자체는 알람 이벤트 프로듀서한테 보내달라고 해야함
        직접 보내달라고 해야할때 memberno한테 알람이 왔다고 보내주는 구조인데
        00를 호출하면 알람이가고 00~~
        보내기 위한 애 받기위한애

        구독하는 시점? -> 이벤트소스 객체가 생성되는 시점(메인페이지가 켜지는 시점) 서버끄면 구독 리스트는 사라짐
        구독이 이루어지고 밑에있는 함이벤트리스너를 통해서 새로운 이벤트스트림을 통해 해로운이벤트가 왔을때 할 행위를 등록함
        이벤트가 오면 콜백 메서드가 실행됨

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
