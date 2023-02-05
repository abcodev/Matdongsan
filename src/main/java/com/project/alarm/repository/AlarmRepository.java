package com.project.alarm.repository;

import com.project.alarm.vo.Alarm;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class AlarmRepository {

    private final SqlSessionTemplate sqlSession;

    public Alarm selectByAlarmNo(long alarmNo) {
        return sqlSession.selectOne("alarmMapper.selectByAlarmNo", alarmNo);
    }

    public List<Alarm> selectList(long memberNo) {
        return sqlSession.selectList("alarmMapper.selectList", memberNo);
    }

    public void save(Alarm alarm) {
        sqlSession.insert("alarmMapper.insert", alarm);
    }

    public void read(long alarmNo) {
        sqlSession.update("alarmMapper.read", alarmNo);
    }

    public void readAll(long memberNo) {
        sqlSession.update("alarmMapper.readAll", memberNo);
    }

    public void delete(long alarmNo) {
        sqlSession.update("alarmMapper.delete", alarmNo);
    }

    public void deleteIfRead(long memberNo) {
        sqlSession.update("alarmMapper.deleteIfRead", memberNo);
    }
}
