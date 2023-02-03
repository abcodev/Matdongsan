package com.project.admin.service;

import com.project.admin.vo.Admin;
import com.project.member.vo.Member;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface AdminService {

    public Map<String, Object> userList(int currentPage);







    public ArrayList<Admin> reportList(int fNo);






    public int uListCount();

    public int rListCount();

    public int deleteQna(int fNo);

    public int deleteFree(int fNo);
}
