package com.project.chat.dto;
import com.project.member.vo.Member;
import lombok.Builder;
import lombok.Data;

import java.util.LinkedList;
import java.util.Objects;
import java.util.UUID;

@Data
@Builder
public class ChatingRoom {
    private String roomNo;
    private long memberNo;

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        ChatingRoom other = (ChatingRoom) obj;
        return Objects.equals(roomNo, other.roomNo);
    }
    @Override
    public int hashCode() {
        return Objects.hash(roomNo);
    }

    public static ChatingRoom create(Long memberNo){
        return ChatingRoom.builder().
                roomNo(UUID.randomUUID().toString())
                .memberNo(memberNo)
                .build();
    }
}
