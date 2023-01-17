package com.project.common.template;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.session.RowBounds;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class PageInfo {
    private int listCount;
    private int currentPage;
    private int pageLimit = 10;
    private int boardLimit = 10;
    private int maxPage;
    private int startPage;
    private int endPage;


    public PageInfo(int listCount, int currentPage) {
        this(listCount, currentPage, 10, 10);
    }

    public PageInfo(int listCount, int currentPage, int boardLimit) {
        this(listCount, currentPage, 10, boardLimit);
    }

    public PageInfo(int listCount, int currentPage, int pageLimit, int boardLimit) {
        this.listCount = listCount;
        this.currentPage = currentPage;
        this.pageLimit = pageLimit;
        this.boardLimit = boardLimit;

        this.maxPage = (int)(Math.ceil(((double)listCount / boardLimit)));
        this.startPage = (currentPage - 1) / this.pageLimit * this.pageLimit + 1;
        this.endPage = this.startPage + this.pageLimit - 1;

        if (this.endPage > this.maxPage) {
            this.endPage = this.maxPage;
        }
    }

    public int getOffset() {
        return (this.currentPage - 1) * this.boardLimit;
    }

    public int getLimit() {
        return this.boardLimit;
    }

    public RowBounds generateRowBounds() {
        return new RowBounds(getOffset(), getLimit());
    }

}
