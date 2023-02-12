package com.bookshop.services.impl;

import com.bookshop.dao.IProductDao;
import com.bookshop.dao.impl.ProductDaoImpl;
import com.bookshop.model.ProductModel;
import com.bookshop.paging.Pageble;
import com.bookshop.services.IProductService;

import java.sql.Timestamp;
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


    @Override
    public ProductModel findById(Long id) {
        return null;
    }

    @Override
    public void delete(Long id) {

    }

    @Override
    public ProductModel add(ProductModel newProduct) {
        newProduct.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        newProduct.setCreatedBy("Đặng Công Thuận");
        if (productDao.checkExits(newProduct.getName())) {
            newProduct.setMessage("Đã tồn tại sản phẩm");
        } else {
            Long productId = productDao.add(newProduct);
            newProduct = productDao.findById(productId);
            newProduct.setMessage("Thêm sản phẩm thành công");
        }
        return newProduct;
    }

    @Override
    public ProductModel update(ProductModel productUpdated) {
        return null;
    }

    @Override
    public void addInforImgs(List<String> listImgs, ProductModel productModel) {
        Long id = productModel.getId();
        for (String item : listImgs) {
            productDao.addInforImgs(item, id);
        }
    }
}
