package com.bookshop.dao.impl;

import com.bookshop.dao.ImgsProductDao;
import com.bookshop.mapper.IRowMapper;
import com.bookshop.mapper.impl.ImgMapper;
import com.bookshop.mapper.impl.ProductMapper;
import com.bookshop.model.ImgModel;
import com.bookshop.model.ProductModel;

import java.sql.Timestamp;
import java.util.List;

public class ImgsProductDaoImpl extends AbstractDao<ImgModel> implements ImgsProductDao {
    private static ImgsProductDaoImpl instance;

    public ImgsProductDaoImpl() {
    }
    public static ImgsProductDaoImpl getInstance() {
        if (instance == null) {
            instance = new ImgsProductDaoImpl();
        }
        return instance;
    }
//    Bảng img
    @Override
    public boolean checkExitImg(String name) {
        String sql = "Select * from img Where img_name = ? and deleted_at is null";
        List<ImgModel> imgs = query(sql, new ImgMapper(), name);
        return imgs.isEmpty() ? false : true;
    }

    @Override
    public Long addImg(String imgName, ProductModel productModel) {
        String sql = "Insert Into img(img_name, status, created_by, created_date) Values( ?, ?, ?, ?)";
        return insert(sql, imgName, 1, productModel.getCreatedBy(), productModel.getCreatedDate());
    }

    @Override
    public void softDeleteImg(Long id) {
        Timestamp time = new Timestamp(System.currentTimeMillis());
        String sql = "Update img Set deleted_at = ? where img_id = ?";
        update(sql, time, id);
    }

    @Override
    public void hardDeleteImg(Long id) {
        String sql = "DELETE FROM img WHERE img_id = ?";
        update(sql, id);
    }
    @Override
    public List<ImgModel> findAllImg() {
        String sql = "Select * from img";
        return query(sql, new ImgMapper());
    }
    @Override
    public ImgModel findImg(Long id) {
        String sql = "Select * from img where img_id = ? and deleted_at is null";
        List<ImgModel> img = query(sql, new ImgMapper(), id);
        return img.isEmpty() ? null : img.get(0);
    }

    @Override
    public Long findImgIdByName(String name) {
        String sql = "Select * from img where img_name = ? and deleted_at is null";
        List<ImgModel> img = query(sql, new ImgMapper(), name);
        return img.get(0).getId();
    }

    @Override
    public ImgModel findImgDelete1st(Long id) {
        String sql = "Select * from img where img_id = ? and deleted_at is not null";
        List<ImgModel> img = query(sql, new ImgMapper(), id);
        return img.isEmpty() ? null : img.get(0);
    }

    @Override
    public List<ImgModel> findImgsDelete() {
        String sql = "Select * from img where deleted_at is not null";
        return query(sql, new ImgMapper());
    }
//    Bảng thumbnail_product
    @Override
    public Long addThumbnail(Long imgId, Long productId) {
        String sql = "Insert Into thumbnail_product(img_id, product_id) Values(?, ?)";
        return insert(sql,imgId, productId);
    }

    @Override
    public void softDeleteThumbnail(Long productId) {
        Timestamp time = new Timestamp(System.currentTimeMillis());
        String sql = "Update thumbnail_product Set deleted_at = ? where product_id = ?";
        update(sql, time, productId);
    }

    @Override
    public void harDeleteThumbnail(Long productId) {
        String sql = "DELETE FROM thumbnail_product WHERE product_id = ?";
        update(sql, productId);
    }

    @Override
    public ImgModel findThumbnail(Long productId) {
        String sql = "Select * from img AS i inner join thumbnail_product AS t  where status = 1 and product_id = ? and i.deleted_at is null and t.deleted_at is null";
        List<ImgModel> img = query(sql, new ImgMapper(), productId);
        return img.isEmpty() ? null : img.get(0);
    }

//    Bảng img_detail_product

    @Override
    public Long addDetailImg(Long imgId, Long productId) {
        String sql = "Insert Into img_detail_product(img_id, product_id) Values(?, ?)";
        return insert(sql,imgId, productId);
    }

    @Override
    public void softDeleteDetailImg(Long productId) {
        Timestamp time = new Timestamp(System.currentTimeMillis());
        String sql = "Update img_detail_product Set deleted_at = ? where product_id = ?";
        update(sql, time, productId);
    }

    @Override
    public void harDeleteDetailImg(Long productId) {
        String sql = "DELETE FROM img_detail_product WHERE product_id = ?";
        update(sql, productId);
    }

    @Override
    public List<ImgModel> findDetailImg(Long productId) {
        String sql = "Select * from img AS i inner join img_detail_product AS d on i.img_id = d.img_id  where status = 1 and product_id = ? and i.deleted_at is null and  d.deleted_at is null";
        return query(sql, new ImgMapper(), productId);
    }
}
