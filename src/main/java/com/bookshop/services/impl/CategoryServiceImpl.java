package com.bookshop.services.impl;

import com.bookshop.dao.ICategoryDao;
import com.bookshop.dao.IProductDao;
import com.bookshop.dao.impl.CategoryDaoImpl;
import com.bookshop.dao.impl.ProductDaoImpl;
import com.bookshop.model.CategoryModel;
import com.bookshop.paging.Pageble;
import com.bookshop.services.ICategoryService;
import org.apache.commons.lang3.StringUtils;

import java.sql.Timestamp;
import java.util.List;

public class CategoryServiceImpl implements ICategoryService {

    private ICategoryDao categoryDao;
    private static CategoryServiceImpl instance;

    public CategoryServiceImpl() {
        categoryDao = CategoryDaoImpl.getInstance();
    }
    public static CategoryServiceImpl getInstance() {
        if (instance == null) {
            instance = new CategoryServiceImpl();
        }
        return instance;
    }


    @Override
    public List<CategoryModel> findAll(Pageble pageble) {
        return categoryDao.findAll(pageble);
    }
    public List<CategoryModel> findAll() {
        return categoryDao.findAll();
    }
    @Override
    public String add(CategoryModel newCategory) {
        newCategory.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        if (categoryDao.checkExits(newCategory.getName())) {
            return " Đã tồn tại danh mục";
        } else {
            Long categoryId = categoryDao.add(newCategory);
            newCategory = categoryDao.findById(categoryId);
            return "thành công";
        }
    }

    @Override
    public CategoryModel findById(Long id) {
        return categoryDao.findById(id);
    }

    @Override
    public String update(CategoryModel newCategory) {
        newCategory.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        categoryDao.update(newCategory);
        return "thành công";
    }

    @Override
    public void delete(Long[] ids) {
        for (Long id : ids) {
            categoryDao.delete(id);
        }
    }

    @Override
    public void delete(Long id) {
        categoryDao.delete(id);
    }
}
