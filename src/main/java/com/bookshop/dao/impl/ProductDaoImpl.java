package com.bookshop.dao.impl;

import com.bookshop.dao.IProductDao;
import com.bookshop.mapper.impl.ProductMapper;
import com.bookshop.model.ProductModel;
import com.bookshop.paging.Pageble;
import org.apache.commons.lang3.StringUtils;

import java.util.List;

public class ProductDaoImpl extends AbstractDao<ProductModel> implements IProductDao {
    private static ProductDaoImpl instance;

    public ProductDaoImpl() {

    }

    public static ProductDaoImpl getInstance() {
        if (instance == null) {
            instance = new ProductDaoImpl();
        }
        return instance;
    }


    @Override
    public List<ProductModel> findAll(Pageble pageble) {
        StringBuilder sql = new StringBuilder("Select * from product p INNER JOIN category AS c ON p.category_id = c.category_id");
        if (!StringUtils.isAllBlank(pageble.getSearchName())) {
            sql.append(" Where " + pageble.getSearchName() + "");
        }
        if (!StringUtils.isAllBlank(pageble.getSortBy(), pageble.getSortName())) {
            sql.append(" Order By " + pageble.getSortName() + " " + pageble.getSortBy() + "");
        }
        if (pageble.getOffSet() != null && pageble.getMaxPageItems() != null) {
            sql.append(" Limit " + pageble.getOffSet() + ", " + pageble.getMaxPageItems() + "");
        }
        return query(sql.toString(), new ProductMapper());
    }

    @Override
    public Long add(ProductModel newProduct) {
        String sql = "Insert Into product(product_name, price, description, category_id, thumbnail_1, thumbnail_2," +
                " status, created_date, created_by) Values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
        return insert(sql, newProduct.getName(), newProduct.getPrice(), newProduct.getDescription(), newProduct.getCategoryId(),
                newProduct.getThumbnail1(), newProduct.getThumbnail2(), newProduct.getStatus(),
                newProduct.getCreatedDate(), newProduct.getCreatedBy());
    }

    @Override
    public void update(ProductModel productUpdated) {
        StringBuilder sql = new StringBuilder("UPDATE product SET product_name = ?, price = ?, thumbnail_1 = ?, thumbnail_2 = ?");
        sql.append(" category_id = ?, status = ?, created_date = ?, created_by = ?,");
        sql.append(" modified_date = ?, modified_by = ?, description = ? Where product_id = ?");
        update(sql.toString(), productUpdated.getName(), productUpdated.getPrice(), productUpdated.getThumbnail1(), productUpdated.getThumbnail2(),
                productUpdated.getCategoryId(), productUpdated.getStatus(), productUpdated.getCreatedDate(),
                productUpdated.getCreatedBy(), productUpdated.getModifiedDate(), productUpdated.getModifiedBy(), productUpdated.getDescription(),
                productUpdated.getId());
    }

    @Override
    public void delete(Long id) {
        String sql = "Delete from product Where product_id = ?";
        update(sql, id);
    }

    @Override
    public ProductModel findById(Long id) {
        String sql = "Select * from product Where product_id = ?";
        List<ProductModel> products = query(sql, new ProductMapper(), id);
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public ProductModel findByName(String name) {
        String sql = "Select * from product Where product_name = ?";
        List<ProductModel> products = query(sql, new ProductMapper(), name);
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public boolean checkExits(String name) {
        String sql = "Select * from product Where product_name = ?";
        List<ProductModel> products = query(sql, new ProductMapper(), name);
        return products.isEmpty() ? false : true;
    }

    @Override
    public Long addInforImgs(String imgName, Long productId) {
        String sql = "Insert Into images_product(image_name, product_id) Values( ?, ?)";
        return insert(sql, imgName, productId);
    }
}
