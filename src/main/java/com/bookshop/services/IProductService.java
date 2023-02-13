package com.bookshop.services;

import com.bookshop.model.ProductModel;
import com.bookshop.paging.Pageble;

import java.util.List;

public interface IProductService {
    List<ProductModel> findAll(Pageble pageble);
    ProductModel findById(Long id);
    void delete(Long id);
    String add(ProductModel newProduct);

    void findImgsProduct(ProductModel productModel);

    ProductModel update(ProductModel productUpdated);
//    void addInforImgs(List<String> listImgs, ProductModel productModel);
}
