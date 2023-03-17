package com.project.alarm.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import java.io.IOException;
import java.util.*;

@Slf4j
@Service
public class AlarmEventProducer {

    private final Map<Long, List<SseEmitter>> subscribers;

    public AlarmEventProducer() {
        this.subscribers = new HashMap<>();
    }

    public void produceAlarm(long memberNo) { // memberNo 만 보내면 알람이 왔다고 메세지가 가는 구조 (여길 호출하면 알람을 받겠다고 기다리는)
        this.produce(memberNo, "realtime_alarm", memberNo);
    }

    public void produceChangeGrade(long memberNo) {
        this.produce(memberNo, "change_grade", memberNo);
    }

    private void produce(long memberNo, String eventName, Object data) {
        List<SseEmitter> emitters = subscribers.getOrDefault(memberNo, List.of());
        List<Integer> removeIndex = new ArrayList<>();

        for (int i = 0; i < emitters.size(); ++i) {
            try {
                emitters.get(i).send(SseEmitter.event()
                        .name(eventName)
                        .data(data));
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
