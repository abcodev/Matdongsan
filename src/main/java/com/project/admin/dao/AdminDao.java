package com.project.admin.dao;


import com.project.admin.vo.Admin;
import com.project.board.vo.Report;
import com.project.common.template.PageInfo;
import com.project.common.template.PageInfoCombine;
import com.project.member.vo.Member;
import com.project.restaurant.dto.RestaurantListFilter;
import com.project.restaurant.vo.Restaurant;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.test.context.jdbc.Sql;

import java.util.ArrayList;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class AdminDao {

    public int uListCount(SqlSession sqlSession) {
        return sqlSession.selectOne("adminMapper.uListCount");
    }

    public List<Member> selectUserList(SqlSession sqlSession,PageInfoCombine pageInfoCombine) {
        RowBounds rowBounds = pageInfoCombine.generateRowBounds();
        return sqlSession.selectList("adminMapper.selectUserList", null, rowBounds);
    }
    public int rListCount(SqlSession sqlSession) {
        return sqlSession.selectOne("adminMapper.rListCount");
    }

    public List<Report> selectReportList(SqlSession sqlSession, PageInfoCombine pageInfoCombine,int fNo) {
        RowBounds rowBounds = pageInfoCombine.generateRowBounds();
        return sqlSession.selectList("adminMapper.selectReportList", fNo, rowBounds);
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
