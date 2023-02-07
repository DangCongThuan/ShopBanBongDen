package com.bookshop.services;

import com.bookshop.model.ProductModel;
import com.bookshop.paging.Pageble;

import java.util.List;

public interface IProductService {
    List<ProductModel> findAll(Pageble pageble);
}
