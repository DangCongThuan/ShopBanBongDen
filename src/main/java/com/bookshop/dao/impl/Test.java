package com.bookshop.dao.impl;

import com.bookshop.dao.ICategoryDao;
import com.bookshop.dao.IProductDao;
import com.bookshop.dao.ImgsProductDao;
import com.bookshop.model.CategoryModel;
import com.bookshop.model.ImgsProductModel;
import com.bookshop.model.ProductModel;

public class Test {
    public static void main(String[] args) {
        IProductDao productDao = ProductDaoImpl.getInstance();
        ImgsProductDao imgsProductDao = ImgsProductDaoImpl.getInstance();
        ImgsProductModel imgsProductModel = new ImgsProductModel();
        ICategoryDao categoryDao = CategoryDaoImpl.getInstance();
        CategoryModel categoryModel = new CategoryModel();
//        ImgsProductDao imgsProductDao1
//        System.out.println(imgsProductDao.add(imgsProductModel.getName(), imgsProductModel.getId()));
        System.out.println(categoryDao.add(categoryModel));
//        System.out.println(productDao.addInforImgs("dfjlsd"));
//        System.out.println(imgsProductDao.add(1L));
//        ProductModel productModel = new ProductModel();
//        productModel.setName("djfkasj;l");
//        System.out.println(productDao.add(productModel));
//        System.out.println(productDao.addInforImgs("flsdafjlas;d", 1L));
//        System.out.println(productDao.findById(47L));
    }

}
