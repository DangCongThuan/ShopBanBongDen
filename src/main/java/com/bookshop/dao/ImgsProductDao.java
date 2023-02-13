package com.bookshop.dao;

import com.bookshop.model.ImgsProductModel;
import com.bookshop.model.ProductModel;

import java.util.List;

public interface ImgsProductDao {

    Long add(String imgName, ProductModel productModel);
    Long add(String imgName, Long productId);
    void delete(Long id);
    void deleteByProductId(Long productId);
    ImgsProductModel findByid(Long id);
    List<ImgsProductModel> findAll(Long id);
    List<ImgsProductModel> findByProductId(Long id);
}
