package com.project.admin.service;

import com.project.admin.dao.AdminDao;
import com.project.admin.vo.Admin;
import com.project.board.service.QnaBoardService;
import com.project.board.vo.QnaBoard;
import com.project.common.template.PageInfo;
import com.project.common.template.Pagination;
import com.project.member.vo.Member;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao adminDao;

    @Autowired
    private SqlSession sqlSession;
    @Autowired
    private Pagination pagination;


    @Override
    public int uListCount(){
        return adminDao.uListCount(sqlSession);
    }
    @Override
    public Map<String , Object> userList(int currentPage){

        Map<String , Object> map = new HashMap();

        int listCount = uListCount();

        int pageLimit = 10;
        int boardLimit = 15;
        PageInfo pi = pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);

        map.put("pi",pi);

        ArrayList<Member> list = adminDao.userList(sqlSession,pi);

        map.put("list", list);
        return map;
    }

    @Override
    public List<Admin> reportList(){
        return adminDao.reportList(sqlSession);
    }


    @Override
    public int rListCount(){
        return adminDao.rListCount(sqlSession);
    }

}
