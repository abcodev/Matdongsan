package com.project.admin.service;

import com.project.admin.dto.AdminListRequest;
import com.project.admin.dto.AdminListResponse;
import com.project.admin.dto.ReportListResponse;
import com.project.admin.vo.Admin;

public interface AdminService {

    public int uListCount();
    public AdminListResponse selectUserList(AdminListRequest request);
    public int rListCount();
    public ReportListResponse selectReportList(AdminListRequest request,int fNo);
    public int deleteQna(int fNo);

    public int deleteFree(int fNo);

    public int insertBlack(Admin ad);



}
