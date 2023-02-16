package com.bookshop.dao;

import com.bookshop.model.ProductModel;
import com.bookshop.paging.Pageble;

import java.util.List;

public interface IProductDao {
    List<ProductModel> findAll(Pageble pageble);
    Long add(ProductModel newProduct);
    void update(ProductModel productUpdated);
    void softDelete(Long id);
    void hardDelete(Long id);
    ProductModel findById(Long id);
    ProductModel findByName(String name);
    boolean checkExits(String name);

    //    Bảng product_detail
    Long addProductDetail(ProductModel newProduct);
    void updateProductDetail(ProductModel productUpdated);
}
