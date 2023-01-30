package com.project.chat.service;
//
//import com.project.chat.dto.ChatingRoom;
//import com.project.chat.repository.ChatRepository;
import com.project.chat.dto.ChatRoomJoin;
import com.project.chat.dto.ChatingRoom;
import com.project.chat.dto.RoomCheckDto;
import com.project.chat.repository.ChatRepository;
import com.project.member.vo.Member;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

//import java.util.Collections;
//import java.util.List;
//
@Slf4j
@Service
public class ChatService {
    @Autowired
    private ChatRepository chatRepository;

    public List<ChatingRoom> chatRoomList() {

        return chatRepository.chatRoomList();
    }


    /**
     * 채팅방 만들기
     */
    public void createRoom(ChatingRoom room) {


        chatRepository.createRoom(room);
    }

    public boolean enterChatRoom(ChatingRoom room, long memberNo) {
        if(room == null){
            return false;
        }else{
            chatRepository.enterRoom(ChatRoomJoin.join(room.getRoomNo(),memberNo));
            return true;
        }
    }

    public int findRoom(RoomCheckDto checkDto){
        return chatRepository.findRoom(checkDto);
    }



//
//    /**
//     * 전체 채팅방 조회
//     */
//    public List<ChatingRoom> findAllRoom(){
//        List ChatRooms = chatRepository.findAllRoom();
//        Collections.reverse(ChatRooms);
//        return new ChatRooms;
//    }
//
//    /**
//     * roomId 기준으로 채팅방 찾기
//     */
//    public ChatingRoom findRoomById(String roomId){
//        return chatRepository.findRoomById(roomId);
//    }
//    /**
//     * room 만들기
//     */
//    public ChatingRoom createChatRoom(String roomId){
//        ChatingRoom chatRoom = chatRepository.createRoom(roomId);
//        return chatRoom;
//    }
//
//    /**
//     * 채팅방 인원
//     */
//    public void plusUserCnt(String roomId){
//        ChatingRoom room = chatRepository.get(roomId);
//        room.setChatRoomNo(room.);
//    }
}