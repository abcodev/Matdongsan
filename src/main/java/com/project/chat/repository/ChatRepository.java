package com.project.chat.repository;

import com.project.chat.dto.ChatRoom;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class ChatRepository {

    private final SqlSessionTemplate sqlSession;


    public List findAllRoom() {
        return sqlSession.selectList("chatMapper.findAllRoom");
    }

    public ChatRoom findRoomById(String roomId) {
        return sqlSession.selectOne("chatMapper.findRoomById",roomId);
    }

    public ChatRoom createRoom(String roomId) {
        return sqlSession.insert("chatMapper.createRoom",roomId);
    }
}
