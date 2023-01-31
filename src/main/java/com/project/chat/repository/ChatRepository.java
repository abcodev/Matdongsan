package com.project.chat.repository;
//
//import com.project.chat.dto.ChatingRoom;
import com.project.chat.dto.ChatRoomJoin;
import com.project.chat.dto.ChatingRoom;
import com.project.chat.dto.MessageDto;
import com.project.chat.dto.RoomCheckDto;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

//
//import java.util.List;
//
@Repository
@RequiredArgsConstructor
public class ChatRepository {
//
    private final SqlSessionTemplate sqlSession;

    public List<ChatingRoom> chatRoomList() {
        return  sqlSession.selectList("chatMapper.chatRoomList");
    }

    public void createRoom(ChatingRoom room) {
        sqlSession.insert("chatMapper.chatRoomInsert",room);
    }

    public ChatingRoom findRoom(long memberNo) {
        return sqlSession.selectOne("chatMapper.findRoom",memberNo);
    }

    public void enterRoom(ChatRoomJoin join) {
        sqlSession.insert("chatMapper.enterRoom",join);
    }

    public void sendMessage(MessageDto data) {
        sqlSession.insert("chatMapper.sendMessage",data);
    }
//
//
//    public List findAllRoom() {
//        return sqlSession.selectList("chatMapper.findAllRoom");
//    }
//
//    public ChatingRoom findRoomById(String roomId) {
//        return sqlSession.selectOne("chatMapper.findRoomById",roomId);
//    }
//
//    public ChatingRoom createRoom(String roomId) {
//        return sqlSession.insert("chatMapper.createRoom",roomId);
//    }
}
