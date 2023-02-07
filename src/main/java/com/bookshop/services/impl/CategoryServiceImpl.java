package com.bookshop.services.impl;

import com.bookshop.dao.ICategoryDao;
import com.bookshop.dao.IProductDao;
import com.bookshop.dao.impl.CategoryDaoImpl;
import com.bookshop.dao.impl.ProductDaoImpl;
import com.bookshop.model.CategoryModel;
import com.bookshop.paging.Pageble;
import com.bookshop.services.ICategoryService;

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
}
