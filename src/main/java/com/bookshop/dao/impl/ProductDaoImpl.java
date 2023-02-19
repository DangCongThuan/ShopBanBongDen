package com.bookshop.dao.impl;

import com.bookshop.dao.IProductDao;
import com.bookshop.mapper.impl.ProductMapper;
import com.bookshop.model.ProductModel;
import com.bookshop.paging.Pageble;
import org.apache.commons.lang3.StringUtils;

import java.sql.Timestamp;
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

//    ----------------------------------------ADMIN-----------------------------------------------

//  find

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
    public ProductModel findById(Long id) {
        String sql = "Select * from product Where product_id = ? and deleted_at is null";
        List<ProductModel> products = query(sql, new ProductMapper(), id);
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public ProductModel findByName(String name) {
        String sql = "Select * from product Where product_name = ? and deleted_at is null";
        List<ProductModel> products = query(sql, new ProductMapper(), name);
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public ProductModel findToEdit(Long id) {
        String sql = "Select * from product as p inner join product_detail as d on p.product_id = d.product_id Where p.product_id = ? and deleted_at is null";
        List<ProductModel> products = query(sql, new ProductMapper(), id);
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public List<ProductModel> findToTable() {
        StringBuilder sql = new StringBuilder("SELECT * FROM product as p INNER JOIN thumbnail_product AS t ON p.product_id = t.product_id ");
        sql.append("INNER JOIN img as i ON t.img_id = i.img_id WHERE p.deleted_at is NULL AND i.deleted_at IS NULL");
        return query(sql.toString(), new ProductMapper());
    }

    //  add
    @Override
    public Long add(ProductModel newProduct) {
        String sql = "Insert Into product(product_name, price, old_price, description, category_id," +
                " status, created_date, created_by) Values(?, ?, ?, ?, ?, ?, ?, ?)";
        return insert(sql, newProduct.getName(), newProduct.getPrice(), newProduct.getOldPrice(), newProduct.getDescription(), newProduct.getCategoryId(),
                newProduct.getStatus(), newProduct.getCreatedDate(), newProduct.getCreatedBy());
    }
    @Override
    public Long addProductDetail(ProductModel newProduct) {
        StringBuilder sql = new StringBuilder("Insert Into product_detail(product_id, describes, size, wattage, lumen, voltage, color)");
        sql.append(" values(?, ?, ?, ?, ?, ?, ?)");
        return insert(sql.toString(), newProduct.getId(), newProduct.getDescribes(), newProduct.getSize(), newProduct.getWattage(), newProduct.getLumen(),
                newProduct.getVoltage(), newProduct.getColor());
    }

//    update
    @Override
    public void update(ProductModel productUpdated) {
        StringBuilder sql = new StringBuilder("UPDATE product SET product_name = ?, price = ?, old_price = ?,");
        sql.append(" category_id = ?, status = ?,");
        sql.append(" modified_date = ?, modified_by = ?, description = ? Where product_id = ?");
        update(sql.toString(), productUpdated.getName(), productUpdated.getPrice(), productUpdated.getOldPrice(),
                productUpdated.getCategoryId(), productUpdated.getStatus(), productUpdated.getModifiedDate(), productUpdated.getModifiedBy(), productUpdated.getDescription(),
                productUpdated.getId());
    }
    @Override
    public void updateProductDetail(ProductModel productUpdated) {
        StringBuilder sql = new StringBuilder("Update product_detail set describes = ?, size = ?, wattage = ?, lumen = ?, voltage = ?, color = ? ");
        sql.append("where product_id = ?");
        update(sql.toString(), productUpdated.getDescribes(), productUpdated.getSize(), productUpdated.getWattage(), productUpdated.getLumen(),
                productUpdated.getVoltage(), productUpdated.getColor(), productUpdated.getId());
    }
//    delete
    @Override
    public void softDelete(Long id) {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        String sql = "Update product set deleted_at = ? where product_id = ?";
        update(sql, timestamp, id);
    }

    @Override
    public void hardDelete(Long id) {
        String sql = "Delete from product Where product_id = ? and deleted_at is not null";
        update(sql, id);
    }



    @Override
    public boolean checkExits(String name) {
        String sql = "Select * from product Where product_name = ? and deleted_at is null";
        List<ProductModel> products = query(sql, new ProductMapper(), name);
        return products.isEmpty() ? false : true;
    }
    @Override
    public boolean checkExits(Long id) {
        String sql = "Select * from product Where product_id = ? and deleted_at is null";
        List<ProductModel> products = query(sql, new ProductMapper(), id);
        return products.isEmpty() ? false : true;
    }
//    ----------------------------------------Web-----------------------------------------------


}
