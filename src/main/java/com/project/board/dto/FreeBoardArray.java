package com.project.board.dto;

import com.project.board.vo.FreeBoard;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreeBoardArray {
    public List<FreeBoard> freeBoardList;
}
