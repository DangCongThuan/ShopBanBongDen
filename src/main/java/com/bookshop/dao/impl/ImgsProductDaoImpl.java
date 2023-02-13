package com.bookshop.dao.impl;

import com.bookshop.dao.ImgsProductDao;
import com.bookshop.mapper.impl.ImgsProductMapper;
import com.bookshop.mapper.impl.ProductMapper;
import com.bookshop.model.ImgsProductModel;
import com.bookshop.model.ProductModel;

import java.util.List;

public class ImgsProductDaoImpl extends AbstractDao<ImgsProductModel> implements ImgsProductDao {
    private static ImgsProductDaoImpl instance;

    public ImgsProductDaoImpl() {
    }
    public static ImgsProductDaoImpl getInstance() {
        if (instance == null) {
            instance = new ImgsProductDaoImpl();
        }
        return instance;
    }

    @Override
    public Long add(String imgName, ProductModel productModel) {
        String sql = "Insert Into images_product(image_name, product_id) Values( ?, ?)";
        return insert(sql, imgName, productModel.getId());
    }

    @Override
    public Long add(String imgName, Long productId) {
        String sql = "Insert Into images_product(image_name, product_id) Values( ?, ?)";
        return insert(sql,imgName, productId);
    }

    @Override
    public void delete(Long id) {
        String sql = "Delete from images_product Where image_id = ?";
        update(sql, id);
    }

    @Override
    public void deleteByProductId(Long productId) {
        String sql = "Delete from images_product Where product_id = ?";
        update(sql, productId);
    }

    @Override
    public ImgsProductModel findByid(Long id) {
        String sql = "Select * from images_product Where image_id = ?";
        List<ImgsProductModel> img = query(sql, new ImgsProductMapper(), id);
        return img.isEmpty() ? null : img.get(0);
    }

    @Override
    public List<ImgsProductModel> findAll(Long id) {
        String sql = "Select * from images_product";
        return query(sql, new ImgsProductMapper());
    }

    @Override
    public List<ImgsProductModel> findByProductId(Long productId) {
        String sql = "Select * from images_product Where product_id = ?";
        return query(sql, new ImgsProductMapper(), productId);
    }
}
