package com.project.admin.service;

import com.project.admin.dao.AdminDao;
import com.project.board.service.QnaBoardService;
import com.project.member.vo.Member;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao adminDao;

    @Autowired
    private SqlSession sqlSession;


    @Override
    public List<Member> userList(){
        return adminDao.userList(sqlSession);

    }

}
