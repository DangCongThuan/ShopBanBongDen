package com.bookshop.dao.impl;

import com.bookshop.dao.ICategoryDao;
import com.bookshop.dao.IProductDao;
import com.bookshop.dao.ImgsProductDao;
import com.bookshop.model.CategoryModel;
import com.bookshop.model.ImgModel;
import com.bookshop.model.ProductModel;

import java.sql.SQLOutput;
import java.util.ArrayList;
import java.util.List;

public class Test {
    public static void main(String[] args) {
        IProductDao productDao = ProductDaoImpl.getInstance();
        ImgsProductDao imgsProductDao = ImgsProductDaoImpl.getInstance();
        ImgModel imgsProductModel = new ImgModel();
        ProductModel productModel = new ProductModel();
//        productModel.setId(785L);
//        productModel.setDescribes("fldjdashfkjdas");
//        productModel.setSize("dfkjdhsflasd");
//        productModel.setWattage("dfkjsdhfjsdhlf");
//        productModel.setLumen("hfkjsdfdsa");
//        productModel.setColor("dfhdaskljsd");
//        productModel.setVoltage("fklsdfhjasdklj");
//        productModel = productDao.findById(268L);
//        Long imgId = imgsProductDao.addImg("fdksfjasd", productModel);
//        System.out.println(imgId);
//        System.out.println(imgsProductDao.checkExitImg("fdksfjasd"));
//       imgsProductDao.softDeleteImg(1L);
//        System.out.println(imgsProductDao.findImgDelete1st(1L));
//        System.out.println(imgsProductDao.findImgsDelete().size());
//        System.out.println(imgsProductDao.addThumbnail(1L, 228L));
//        imgsProductDao.softDeleteThumbnail(228L);
//        System.out.println(imgsProductDao.findThumbnail(228L));
//        System.out.println(imgsProductDao.addDetailImg(1L, 228L));
//        imgsProductDao.softDeleteDetailImg(228L);
//        System.out.println(imgsProductDao.findDetailImg(228L).size());
//        System.out.println(productDao.addProductDetail(productModel));
//        System.out.println(imgsProductDao.findThumbnail(278L).getName());
//        List<ProductModel> list = productDao.findToTable();
//        for (ProductModel item : list) {
//            System.out.println(item.toString());
//        }
        System.out.println(productDao.findToEdit(279L));
        List<ProductModel> list = productDao.findToTable();
        for (ProductModel item : list) {
            System.out.println(item.toString());
        }
    }

}
