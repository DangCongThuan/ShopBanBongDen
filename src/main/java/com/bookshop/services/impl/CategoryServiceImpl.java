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
    public CategoryModel add(CategoryModel newCategory) {
        newCategory.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        if (StringUtils.isAnyBlank(newCategory.getName(), newCategory.getDescription())) {
            newCategory.setMessage("null_value");
        } else if (categoryDao.checkExits(newCategory.getName())) {
            newCategory.setMessage(" Đã tồn tại danh mục");
        } else {
            Long categoryId = categoryDao.add(newCategory);
            newCategory = categoryDao.findById(categoryId);
            newCategory.setMessage("Thêm thành công");
        }
        return newCategory;
    }

    @Override
    public CategoryModel findById(Long id) {
        return categoryDao.findById(id);
    }

    @Override
    public CategoryModel update(CategoryModel newCategory) {
        CategoryModel oldCategory = categoryDao.findById(newCategory.getId());
        newCategory.setCreatedBy(oldCategory.getCreatedBy());
        newCategory.setCreatedDate(oldCategory.getCreatedDate());
        newCategory.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        categoryDao.update(newCategory);
        newCategory = categoryDao.findById(newCategory.getId());
        if (newCategory == null) {
            newCategory.setMessage("Lỗi không thể cập nhật");
        }
        else {
            newCategory.setMessage("Cập nhật thành công");
        }
        return newCategory;
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
