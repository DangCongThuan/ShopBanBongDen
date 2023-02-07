package com.bookshop.services.impl;

import com.bookshop.dao.IProductDao;
import com.bookshop.dao.impl.ProductDaoImpl;
import com.bookshop.model.ProductModel;
import com.bookshop.paging.Pageble;
import com.bookshop.services.IProductService;

import java.util.List;

public class ProductServiceImpl implements IProductService {
    private IProductDao productDao;
    private static ProductServiceImpl instance;

    public ProductServiceImpl() {
        productDao = ProductDaoImpl.getInstance();
    }
    public static ProductServiceImpl getInstance() {
        if (instance == null) {
            instance = new ProductServiceImpl();
        }
        return instance;
    }

    @Override
    public List<ProductModel> findAll(Pageble pageble) {
        return productDao.findAll(pageble);
    }
}
