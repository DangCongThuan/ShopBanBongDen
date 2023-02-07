package com.bookshop.services;

import com.bookshop.model.CategoryModel;
import com.bookshop.paging.Pageble;

import java.util.List;

public interface ICategoryService {
    List<CategoryModel> findAll(Pageble pageble);

    List<CategoryModel> findAll();
}
