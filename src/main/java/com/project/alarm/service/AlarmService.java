package com.project.alarm.service;

import com.project.alarm.repository.AlarmRepository;
import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.vo.Alarm;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class AlarmService {

    private final AlarmRepository alarmRepository;
    private final AlarmEventProducer alarmEventProducer;

    public List<Alarm> retrieveAlarmList(long memberNo) {
        return alarmRepository.selectList(memberNo);
    }

    // MemberNo 1번아 너 새로운 알람왔더라!
    // 1번이 아 새로운거 왔다고? 읽어야겠다.
    // Zero Payload

    public void send(AlarmTemplate template) {
        // 1. template -> Alarm Entity 생성 -> alarmDao.save(entity)
        Alarm alarm = Alarm.of(template);
        alarmRepository.save(alarm);

        // 2. alarmEventProducer.produce(memberNo)
        alarmEventProducer.produce(template.getMemberNo());
    }

    public Alarm read(long alarmNo) {
        alarmRepository.read(alarmNo);
        return alarmRepository.selectByAlarmNo(alarmNo);
    }

    public void readAll(long memberNo) {
        alarmRepository.readAll(memberNo);
    }

    public void delete(long alarmNo) {
        alarmRepository.delete(alarmNo);
    }

    public void deleteIfRead(long memberNo) {
        alarmRepository.deleteIfRead(memberNo);
    }
}
