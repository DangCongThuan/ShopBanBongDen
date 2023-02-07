package com.bookshop.dao;

import com.bookshop.model.ProductModel;
import com.bookshop.paging.Pageble;

import java.util.List;

public interface IProductDao {
    List<ProductModel> findAll(Pageble pageble);
}
