package com.bookshop.mapper.impl;

import com.bookshop.mapper.IRowMapper;
import com.bookshop.model.CategoryModel;
import com.bookshop.model.ProductModel;
import org.apache.commons.lang3.StringUtils;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements IRowMapper<ProductModel> {
    @Override
    public ProductModel mapRow(ResultSet rs) {
        ProductModel productModel = new ProductModel();
        try {
            productModel.setId(rs.getLong("product_id"));
            productModel.setName(rs.getString("product_name"));
            productModel.setPrice(rs.getLong("price"));
            productModel.setCategoryId(rs.getLong("category_id"));
            productModel.setCreatedDate(rs.getTimestamp("created_date"));
            productModel.setCreatedBy(rs.getString("created_by"));
            productModel.setStatus(rs.getInt("status"));
            productModel.setDescription(rs.getString("description"));
            productModel.setOldPrice(rs.getLong("old_price"));
            try {
                productModel.setModifiedBy(rs.getString("modified_by"));
                productModel.setModifiedDate(rs.getTimestamp("modified_date"));
            } catch (Exception e) {
                System.out.println(this.getClass() + e.getMessage());
            }
            try {
                productModel.setThumbnail(rs.getString("img_name"));
            } catch (Exception e) {
                System.out.println(this.getClass() + e.getMessage());
            }
            try {
                productModel.setDescribes(rs.getString("describes"));
                productModel.setSize(rs.getString("size"));
                productModel.setWattage(rs.getString("wattage"));
                productModel.setLumen(rs.getString("lumen"));
                productModel.setVoltage(rs.getString("voltage"));
                productModel.setColor(rs.getString("color"));
                CategoryModel categoryModel = new CategoryModel();
                categoryModel.setName(rs.getString("category_name"));
                productModel.setCategoryModel(categoryModel);
            } catch (Exception e) {
                System.out.println(this.getClass() + e.getMessage());
            }
        } catch (SQLException e) {
            System.out.println(this.getClass() + e.getMessage());
        }
        return productModel;
    }
}
