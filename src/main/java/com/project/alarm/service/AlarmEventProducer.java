package com.project.alarm.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *  SseEmitter(Spring)
 */

@Slf4j
@Service
public class AlarmEventProducer {

    private final Map<Long, List<SseEmitter>> subscribers;

    public AlarmEventProducer() {
        this.subscribers = new HashMap<>();
    }

    // send 는 떠넘기기
    public void produce(long memberNo) {
        log.info("프로듀싱 정보 : " + memberNo);
    }

    public SseEmitter subscribe(long memberNo) {
        SseEmitter subscriber = new SseEmitter();
        subscriber.onCompletion(() -> subscribers.remove(memberNo));
        subscriber.onTimeout(() -> subscribers.remove(memberNo));

        if (subscribers.containsKey(memberNo)) {
            subscribers.get(memberNo).add(subscriber);
        } else {
            subscribers.put(memberNo, List.of(subscriber));
        }
        return subscriber;
    }

}
