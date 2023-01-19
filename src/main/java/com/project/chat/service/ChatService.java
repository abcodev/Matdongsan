package com.project.chat.service;
//
//import com.project.chat.dto.ChatRoom;
//import com.project.chat.repository.ChatRepository;
import com.project.chat.dto.ChatRoom;
import com.project.chat.repository.ChatRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

//import java.util.Collections;
//import java.util.List;
//
@Slf4j
@Service
public class ChatService {
    @Autowired
    private ChatRepository chatRepository;

    public List<ChatRoom> chatRoomList() {

        return chatRepository.chatRoomList();
    }


//
//    /**
//     * 전체 채팅방 조회
//     */
//    public List<ChatRoom> findAllRoom(){
//        List ChatRooms = chatRepository.findAllRoom();
//        Collections.reverse(ChatRooms);
//        return new ChatRooms;
//    }
//
//    /**
//     * roomId 기준으로 채팅방 찾기
//     */
//    public ChatRoom findRoomById(String roomId){
//        return chatRepository.findRoomById(roomId);
//    }
//    /**
//     * room 만들기
//     */
//    public ChatRoom createChatRoom(String roomId){
//        ChatRoom chatRoom = chatRepository.createRoom(roomId);
//        return chatRoom;
//    }
//
//    /**
//     * 채팅방 인원
//     */
//    public void plusUserCnt(String roomId){
//        ChatRoom room = chatRepository.get(roomId);
//        room.setChatRoomNo(room.);
//    }
}
///