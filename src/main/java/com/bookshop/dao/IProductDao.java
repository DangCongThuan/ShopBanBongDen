package com.bookshop.dao;

import com.bookshop.model.ProductModel;
import com.bookshop.paging.Pageble;

import java.util.List;

public interface IProductDao {

    //    ----------------------------------------ADMIN-----------------------------------------------
//    find
    List<ProductModel> findAll(Pageble pageble);
    ProductModel findById(Long id);
    ProductModel findByName(String name);
    ProductModel findToEdit(Long id);

    List<ProductModel> findToTable();

    //    add
    Long add(ProductModel newProduct);
    Long addProductDetail(ProductModel newProduct);

//    update
    void update(ProductModel productUpdated);
    void updateProductDetail(ProductModel productUpdated);

//    delete
    void softDelete(Long id);
    void hardDelete(Long id);
    boolean checkExits(String name);
    boolean checkExits(Long id);
}
