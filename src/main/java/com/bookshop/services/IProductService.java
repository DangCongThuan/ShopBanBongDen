package com.bookshop.services;

import com.bookshop.model.ProductModel;
import com.bookshop.paging.Pageble;

import java.util.List;

public interface IProductService {
    //    ----------------------------------------ADMIN-----------------------------------------------
// find
    List<ProductModel> findAll(Pageble pageble);
    List<ProductModel> findToTable();
    ProductModel findById(Long id);
    ProductModel findToEdit(Long id);


    String delete(Long id);
    String add(ProductModel newProduct);

    void findImgsProduct(ProductModel productModel);

    String update(ProductModel productUpdated);
//    void addInforImgs(List<String> listImgs, ProductModel productModel);
}
