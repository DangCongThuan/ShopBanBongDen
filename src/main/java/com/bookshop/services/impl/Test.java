package com.bookshop.services.impl;

import com.bookshop.dao.ICategoryDao;
import com.bookshop.dao.impl.CategoryDaoImpl;
import com.bookshop.model.ProductModel;
import com.bookshop.services.ICategoryService;
import com.bookshop.services.IProductService;

import java.util.ArrayList;
import java.util.List;

public class Test {
    public static void main(String[] args) {
        ICategoryService categoryService = CategoryServiceImpl.getInstance();
        IProductService productService = ProductServiceImpl.getInstance();
        ProductModel productModel = new ProductModel();
        productModel.setId(160L);
        productService.findImgsProduct(productModel);
        for (String item : productModel.getInforImages()) {
            System.out.println(item);
        }
        System.out.println(productModel.getInforImages().get(1));
//        Categ
//        List<String> list = new ArrayList<>();
//        list.add("fadsjfl");
//        list.add("dfhkjasd");
//        System.out.println(list.get(1));
    }
}
