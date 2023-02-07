package com.bookshop.dao;

import com.bookshop.model.CategoryModel;
import com.bookshop.paging.Pageble;

import java.util.List;

public interface ICategoryDao {
    List<CategoryModel> findAll(Pageble pageble);

    List<CategoryModel> findAll();
}
