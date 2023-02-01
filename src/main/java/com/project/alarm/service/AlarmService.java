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

    public void send(AlarmTemplate template) {
        // 1. template -> Alarm Entity 생성 -> alarmDao.save(entity)
        Alarm alarm = Alarm.of(template);
        alarmRepository.save(alarm);

        // 2. alarmEventProducer.produce(memberNo)
        alarmEventProducer.produce(template.getMemberNo());
    }

}
