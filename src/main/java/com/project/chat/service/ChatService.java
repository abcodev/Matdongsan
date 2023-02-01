package com.project.chat.service;
//
//import com.project.chat.dto.ChatingRoom;
//import com.project.chat.repository.ChatRepository;

import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.service.AlarmService;
import com.project.chat.dto.*;
import com.project.chat.repository.ChatRepository;
import com.project.common.template.Utils;
import com.project.member.dao.MemberDao;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

//import java.util.Collections;
//import java.util.List;
//
@Slf4j
@Service
@RequiredArgsConstructor
public class ChatService {
    private final ChatRepository chatRepository;
    private final MemberDao memberDao;
    private final AlarmService alarmService;


    /**
     * 채팅방 만들기
     */
    public Map<String, Object> findRoom(long memberNo) {

        Map<String, Object> map = new HashMap<>();

        RoomCheckDto roomCheckDto = RoomCheckDto.checkDto(memberNo);
        ChatingRoom chatingRoom = chatRepository.roomCheck(roomCheckDto);

        if (ObjectUtils.isEmpty(chatingRoom)) {
            ChatingRoom room = ChatingRoom.create(memberNo);
            chatRepository.createRoom(room);
            chatRepository.enterRoom(ChatRoomJoin.join(room.getRoomNo(), memberNo));

            map.put("room", room);
            // 관리자는

        } else {
            List<MessageListDto> messageList = chatRepository.messageList(chatingRoom.getRoomNo());
            map.put("room", chatingRoom);
            map.put("messageList", messageList);

        }
        return map;
    }


    public void sendMessage(MessageDto data) {
        chatRepository.sendMessage(data);
    }


    public List<AdminChatRoom> findAdminRoomList() {
        return List.of();
    }

    public List<AdminChatRoom> adminChattingList() {
        return chatRepository.adminChattingList();
    }

    public List<AdminChatMessage> adminMessageList(String roomNo) {
        return chatRepository.adminMessageList(roomNo);
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
//        Chae
//
//    /**
//     * 채팅방 인원
//     */
//    public void plusUserCnt(String roomId){
//        ChatingRoom room = chatRepository.get(roomId);
//        room.setChatRoomNo(room.);
//    }
}