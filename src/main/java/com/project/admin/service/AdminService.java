package com.project.admin.service;

import com.project.admin.dto.*;
import com.project.admin.vo.Admin;

public interface AdminService {

    public int uListCount();
    public AdminListResponse selectUserList(AdminListRequest request);
    public int rListCount();
    public ReportListResponse selectReportList(AdminListRequest request,int fNo);
    public int deleteQna(int fNo);

    public int deleteFree(int fNo);

    public int insertBlack(Admin ad);


    BrokerListResponse BrokerList(int currentPage);

    void ban(BanRequest req);

    void handleApply(HandleApplyRequest req);
}
