package com.project.chat.service;

import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.service.AlarmService;
import com.project.chat.dto.*;
import com.project.chat.repository.ChatRepository;
import com.project.member.dao.MemberDao;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        } else {
            List<MessageListDto> messageList = chatRepository.messageList(chatingRoom.getRoomNo());
            map.put("room", chatingRoom);
            map.put("messageList", messageList);
        }
        return map;
    }


    public void sendMessage(MessageDto data) {
        ChatingRoom chatingRoom = chatRepository.selectByRoomNo(data.getRoomNo());
        Member sender = memberDao.select(data.getMemberNo());
        long receiverNo = (data.getMemberNo() == 1) ? chatingRoom.getMemberNo() : 1;

        AlarmTemplate template = AlarmTemplate.generateNewChatMessageTemplate(data.getRoomNo(), receiverNo, sender.getMemberName());
        alarmService.send(template);
        chatRepository.sendMessage(data);
    }


    public List<AdminChatRoom> findAdminRoomList() {
        return List.of();
    }

    public List<AdminChatRoom> adminChattingList() {
        return chatRepository.adminChattingList();
    }

    public List<AdminChatMessage> adminMessageList(String roomNo) {
        chatRepository.messageRead(roomNo);
        return chatRepository.adminMessageList(roomNo);
    }

    public void updateMessageRead(MessageDto messageDto) {
        chatRepository.updateMessageRead(messageDto);
    }



}