package com.project.admin.dao;


import com.project.admin.vo.Admin;
import com.project.board.vo.QnaBoard;
import com.project.common.template.PageInfo;
import com.project.member.vo.Member;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.test.context.jdbc.Sql;

import java.util.ArrayList;
import java.util.List;

@Repository
public class AdminDao {

    public int uListCount(SqlSession sqlSession){
        return sqlSession.selectOne("adminMapper.uListCount");
    }
    public ArrayList<Member> userList(SqlSession sqlSession, PageInfo pi) {
        int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
        int limit = pi.getBoardLimit();

        RowBounds rowBounds = new RowBounds(offset,limit);

        return (ArrayList)sqlSession.selectList("adminMapper.userList",null,rowBounds);
    }
    public ArrayList<Admin> reportList(SqlSession sqlSession){
        return (ArrayList) sqlSession.selectList("adminMapper.reportList");
    }



    public int rListCount(SqlSession sqlSession){
        return sqlSession.selectOne("adminMapper.rListCount");
    }

    public int deleteBoard(SqlSession sqlSession,int freeBno) {
        return  sqlSession.update("adminMapper.deleteBaord",freeBno);
    }


}
