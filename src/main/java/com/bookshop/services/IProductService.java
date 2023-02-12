package com.bookshop.services;

import com.bookshop.model.ProductModel;
import com.bookshop.paging.Pageble;

import java.util.List;

public interface IProductService {
    List<ProductModel> findAll(Pageble pageble);
    ProductModel findById(Long id);
    void delete(Long id);
    ProductModel add(ProductModel newProduct);

    ProductModel update(ProductModel productUpdated);
    void addInforImgs(List<String> listImgs, ProductModel productModel);
}
