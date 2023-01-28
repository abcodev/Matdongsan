package com.project.alarm.controller;

import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.service.AlarmEventProducer;
import com.project.alarm.service.AlarmService;
import com.project.alarm.vo.Alarm;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 실시간 알림 구독하는 flow -> 로그인 시점
 *
 * 사용자 -> RealtimAlarmController -> (subscribe) -> AlarmEventProducer
 *          (session -> memberNo)
 */

@Controller
@RequiredArgsConstructor
public class RealtimeAlarmController {

    private final AlarmEventProducer alarmEventProducer;
    private final AlarmService alarmService;

    @GetMapping("/alarm/test")
    public void test() {
        alarmService.send(AlarmTemplate.generateTestTemplate(1, "1000"));
    }

    @GetMapping("/alarm/test2")
    public ResponseEntity<List<Alarm>> test2() {
        return ResponseEntity.ok(alarmService.retrieveAlarmList(1));
    }

    @GetMapping(value = "/alarm/subscribe", produces = MediaType.TEXT_EVENT_STREAM_VALUE)
    public SseEmitter alarmSubscribe(HttpSession session) {
        Member loginUser = (Member) session.getAttribute("loginUser");
        if (loginUser == null) {
            throw new RuntimeException("로그인 하고 오세용");
        }
        return alarmEventProducer.subscribe(loginUser.getMemberNo());
    }

}
