package com.project.alarm.controller;

import com.project.alarm.service.AlarmEventProducer;
import com.project.alarm.service.AlarmService;
import com.project.alarm.vo.Alarm;
import com.project.chat.service.ChatService;
import com.project.common.annotation.RequiredLogin;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import javax.servlet.http.HttpSession;
import java.util.List;

/*
    실시간 알림 구독 flow -> 로그인 시점

    사용자 -> RealtimeAlarmController -> (subscribe) -> AlarmEventProducer
             (session -> memberNo)
*/

@Controller
@RequiredArgsConstructor
public class RealtimeAlarmController {

    private final AlarmEventProducer alarmEventProducer;
    private final AlarmService alarmService;

    @GetMapping("/alarmList")
    public ModelAndView retrieveAlarmList(HttpSession session) {
        Member loginUser = (Member) session.getAttribute("loginUser");
//        if (loginUser == null) {
//            throw new RuntimeException("로그인 하고 오세용");
//        }

        ModelAndView modelAndView = new ModelAndView();
        List<Alarm> alarmList = alarmService.retrieveAlarmList(loginUser.getMemberNo());
        modelAndView.addObject("alarmList", alarmList);
        modelAndView.setViewName("alarm/alarmContents");
        return modelAndView;
    }

    /**
     *  1. 알람 읽음처리 API
     *  2. 알람 삭제 API
     */
    @GetMapping("/alarm/readAll")
    public ResponseEntity<Void> readAllAlarm(HttpSession session) {
        Member loginUser = (Member) session.getAttribute("loginUser");
        if (loginUser == null) {
            throw new RuntimeException("로그인 하고 오세용");
        }
        alarmService.readAll(loginUser.getMemberNo());
        return ResponseEntity.ok().build();
    }

    @GetMapping("/alarm/{alarmNo}/read")
    public ResponseEntity<Alarm> readAlarm(@PathVariable long alarmNo) {
        return ResponseEntity.ok(alarmService.read(alarmNo));
    }

    @DeleteMapping("/alarm/{alarmNo}")
    public ResponseEntity<Void> deleteAlarm(@PathVariable long alarmNo) {
        alarmService.delete(alarmNo);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/alarm/deleteIfRead")
    public ResponseEntity<Void> deleteAlarmIfRead(HttpSession session) {
        Member loginUser = (Member) session.getAttribute("loginUser");
        if (loginUser == null) {
            throw new RuntimeException("로그인 하고 오세용");
        }
        alarmService.deleteIfRead(loginUser.getMemberNo());
        return ResponseEntity.ok().build();
    }

    /*
        SSE 연결을 통해서 알람을 받겠다고 구독하는 행위
        SSE -> 서버 to client 스트림을 유지시켜놓음 서버가 일방적으로 메세지를 보낼 수 있는 구조
     */
    @GetMapping(value = "/alarm/subscribe", produces = MediaType.TEXT_EVENT_STREAM_VALUE)
    public SseEmitter alarmSubscribe(HttpSession session) {
        Member loginUser = (Member) session.getAttribute("loginUser");
        if (loginUser == null) {
            throw new RuntimeException("로그인 하고 오세용");
        }
        return alarmEventProducer.subscribe(loginUser.getMemberNo());
    }

}


