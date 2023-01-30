package com.project.board.dao;

import com.project.board.vo.FreeBoard;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Repository
public class FreeBoardDao {

    public int insertFboard(SqlSession sqlSession, FreeBoard fb) {
        return sqlSession.insert("freeBoardMapper.insertFboard", fb);
    }

    public List<FreeBoard> selectFreeList(SqlSession sqlSession, Map<String, String> option) {
        // RowBounds 만들고
        return sqlSession.selectList("freeBoardMapper.selectFreeList", option);
    }
}
