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

    public void save(Alarm alarm) {
        sqlSession.insert("alarmMapper.insert", alarm);
    }

    public List<Alarm> selectList(long memberNo) {
        return sqlSession.selectList("alarmMapper.selectList", memberNo);
    }
}
