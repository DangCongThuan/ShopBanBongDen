package com.bookshop.dao.impl;

import com.bookshop.dao.ICategoryDao;
import com.bookshop.mapper.impl.CategoryMapper;
import com.bookshop.mapper.impl.ProductMapper;
import com.bookshop.model.CategoryModel;
import com.bookshop.paging.Pageble;
import org.apache.commons.lang3.StringUtils;

import java.util.List;

public class CategoryDaoImpl extends AbstractDao<CategoryModel> implements ICategoryDao {
    private static CategoryDaoImpl instance;

    public CategoryDaoImpl() {
    }

    public static CategoryDaoImpl getInstance() {
        if (instance == null) {
            instance = new CategoryDaoImpl();
        }
        return instance;
    }


    @Override
    public List<CategoryModel> findAll(Pageble pageble) {
        StringBuilder sql = new StringBuilder("Select * from category");
        if (!StringUtils.isAllBlank(pageble.getSearchName())) {
            sql.append(" Where " + pageble.getSearchName() + "");
        }
        if (!StringUtils.isAllBlank(pageble.getSortBy(), pageble.getSortName())) {
            sql.append(" Order By " + pageble.getSortName() + " " + pageble.getSortBy() + "");
        }
        if (pageble.getOffSet() != null && pageble.getMaxPageItems() != null) {
            sql.append(" Limit " + pageble.getOffSet() + ", " + pageble.getMaxPageItems() + "");
        }
        return query(sql.toString(), new CategoryMapper());
    }

    @Override
    public List<CategoryModel> findAll() {
        StringBuilder sql = new StringBuilder("Select * from category");
        return query(sql.toString(), new CategoryMapper());
    }
}
