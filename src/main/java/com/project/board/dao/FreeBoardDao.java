package com.project.board.dao;

import com.project.board.vo.FreeBoard;
import com.project.board.vo.QnaBoard;
import com.project.common.template.PageInfo;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.test.context.jdbc.Sql;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class FreeBoardDao {

    public int insertFboard(SqlSession sqlSession, FreeBoard fb){
        return sqlSession.insert("freeBoardMapper.insertFboard", fb);
    }

    public List<FreeBoard> selectFreeList(SqlSession sqlSession) {
        return sqlSession.selectList("freeBoardMapper.selectFreeList");
    }
}
