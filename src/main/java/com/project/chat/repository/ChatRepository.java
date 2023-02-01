package com.project.chat.repository;
//
//import com.project.chat.dto.ChatingRoom;
import com.project.chat.dto.*;
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



    /**
     * 채팅방 생성
     */
    public void createRoom(ChatingRoom room) {
        sqlSession.insert("chatMapper.chatRoomInsert",room);
    }

    /**
     * chat_room_join 테이블에 주입
     */
    public void enterRoom(ChatRoomJoin join) {
        sqlSession.insert("chatMapper.enterRoom",join);
    }

    /**
     * 보낸 메세지 DB에 저장
     */
    public void sendMessage(MessageDto data) {
        sqlSession.insert("chatMapper.sendMessage",data);
    }

    /**
     * 채팅방 유무 확인
     */
    public ChatingRoom roomCheck(RoomCheckDto roomCheckDto) {
        return  sqlSession.selectOne("chatMapper.roomCheck",roomCheckDto);
    }

    public List<ChatJoinMember> selectJoinMemberList(String roomNo) {
        return sqlSession.selectList("chatMapper.selectJoinMemberList", roomNo);
    }

    /**
     * 메세지 리스트 가져오기
     */
    public List<MessageListDto> messageList(String roomNo) {
        return sqlSession.selectList("chatMapper.messageList",roomNo);
    }

}
