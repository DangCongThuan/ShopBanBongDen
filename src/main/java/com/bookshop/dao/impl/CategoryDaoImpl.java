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
    @Override
    public boolean checkExits(String name) {
        String sql = "Select * From category Where category_name = ?";
        List<CategoryModel> categoryModelList = query(sql, new CategoryMapper(), name);
        return categoryModelList.isEmpty() ? false : true;
    }

    @Override
    public Long add(CategoryModel newCategory) {
        String sql = "Insert Into category(category_name, description, status, created_date, created_by) Values( ?, ?, ?, ?, ?)";
        return insert(sql, newCategory.getName(), newCategory.getDescription(), newCategory.getStatus(), newCategory.getCreatedDate(),
                newCategory.getCreatedBy());
    }

    @Override
    public CategoryModel findById(Long categoryId) {
        String sql = "Select * From category Where category_id = ?";
        List<CategoryModel> categoryModelList = query(sql, new CategoryMapper(), categoryId);
        return categoryModelList.isEmpty() ? null : categoryModelList.get(0);

    }

    @Override
    public void update(CategoryModel newCategory) {
        StringBuilder sql = new StringBuilder("Update category Set category_name = ?, description = ?,");
        sql.append(" status = ?, modified_date = ?, modified_by = ? Where category_id = ?");
        update(sql.toString(), newCategory.getName(), newCategory.getDescription(), newCategory.getStatus(),
                newCategory.getModifiedDate(), newCategory.getModifiedBy(), newCategory.getId());
    }

    @Override
    public void delete(Long id) {
        String sql = "DELETE FROM category WHERE category_id = ?";
        update(sql, id);
    }
}
