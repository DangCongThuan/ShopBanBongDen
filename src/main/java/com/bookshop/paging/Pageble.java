package com.bookshop.paging;

public class Pageble {
    private Integer page;
    private Integer maxPageItems;
    private String sortName;
    private String sortBy;
    private String searchName;

    public Pageble(Integer page, Integer maxPageItems) {
        this.page = page;
        this.maxPageItems = maxPageItems;
    }

    public Pageble(Integer page, Integer maxPageItems, String sortName, String sortBy) {
        this.page = page;
        this.maxPageItems = maxPageItems;
        this.sortName = sortName;
        this.sortBy = sortBy;
    }

    public Pageble(Integer page, Integer maxPageItems, String sortName, String sortBy, String searchName) {
        this.page = page;
        this.maxPageItems = maxPageItems;
        this.sortName = sortName;
        this.sortBy = sortBy;
        this.searchName = searchName;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getMaxPageItems() {
        return maxPageItems;
    }

    public void setMaxPageItems(Integer maxPageItems) {
        this.maxPageItems = maxPageItems;
    }

    public String getSortName() {
        return sortName;
    }

    public void setSortName(String sortName) {
        this.sortName = sortName;
    }

    public String getSortBy() {
        return sortBy;
    }

    public void setSortBy(String sortBy) {
        this.sortBy = sortBy;
    }

    public String getSearchName() {
        return searchName;
    }

    public void setSearchName(String searchName) {
        this.searchName = searchName;
    }

    public Integer getOffSet() {
        if (this.page != null && this.maxPageItems != null) {
            return (this.page - 1) * this.maxPageItems;
        }
        return null;
    }

}
