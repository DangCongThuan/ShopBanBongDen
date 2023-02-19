package com.bookshop.services;

import com.bookshop.model.CategoryModel;
import com.bookshop.paging.Pageble;

import java.util.List;

public interface ICategoryService {
    List<CategoryModel> findAll(Pageble pageble);

    List<CategoryModel> findAll();

    String add(CategoryModel newCategory);

    CategoryModel findById(Long id);

    String update(CategoryModel newCategory);

    void delete(Long[] ids);
    void delete(Long id);
}
