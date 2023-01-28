package com.project.admin.dao;


import com.project.member.vo.Member;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AdminDao {

    public List<Member> userList(SqlSession sqlSession) {
        return sqlSession.selectList("adminMapper.userList");
    }


}
