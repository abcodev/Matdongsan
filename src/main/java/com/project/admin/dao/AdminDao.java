package com.project.admin.dao;


import com.project.admin.vo.Admin;
import com.project.common.template.PageInfo;
import com.project.member.vo.Member;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

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
    public ArrayList<Admin> reportList(SqlSession sqlSession,int fNo){
        return (ArrayList) sqlSession.selectList("adminMapper.reportList",fNo);
    }



    public int rListCount(SqlSession sqlSession){
        return sqlSession.selectOne("adminMapper.rListCount");
    }

    public int deleteQna(SqlSession sqlSession,int fNo) {
        return  sqlSession.update("adminMapper.deleteQna",fNo);
    }

    public int  deleteFree(SqlSession sqlSession, int fNo){
        return sqlSession.update("adminMapper.deleteFree",fNo);
    }

    public int insertBlack(SqlSession sqlSession, Admin ad){
        return sqlSession.insert("adminMapper.insertBlack",ad);

    }

}
