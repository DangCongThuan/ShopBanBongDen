package com.bookshop.dao;

import com.bookshop.model.ImgModel;
import com.bookshop.model.ProductModel;

import java.util.List;

public interface ImgsProductDao {
    //    Bảng img
    boolean checkExitImg(String name);

    Long addImg(String imgName, ProductModel productModel);

    void softDeleteImg(Long id);

    void hardDeleteImg(Long id);

    List<ImgModel> findAllImg();

    ImgModel findImg(Long id);

    ImgModel findImgDelete1st(Long id);
    Long findImgIdByName(String name);

    List<ImgModel> findImgsDelete();


    //    Bảng thumbnail_product
    Long addThumbnail(Long imgId, Long productId);

    void softDeleteThumbnail(Long productId);

    void harDeleteThumbnail(Long productId);

    ImgModel findThumbnail(Long productId);

    //    Bảng thumbnail_product

    Long addDetailImg(Long imgId, Long productId);

    void softDeleteDetailImg(Long productId);

    void harDeleteDetailImg(Long productId);

    List<ImgModel> findDetailImg(Long productId);

}
