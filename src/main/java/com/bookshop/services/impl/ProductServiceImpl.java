package com.bookshop.services.impl;

import com.bookshop.dao.IProductDao;
import com.bookshop.dao.ImgsProductDao;
import com.bookshop.dao.impl.ImgsProductDaoImpl;
import com.bookshop.dao.impl.ProductDaoImpl;
import com.bookshop.model.ImgModel;
import com.bookshop.model.ProductModel;
import com.bookshop.paging.Pageble;
import com.bookshop.services.IProductService;

import java.sql.Timestamp;
import java.util.List;

public class ProductServiceImpl implements IProductService {
    private IProductDao productDao;
    private static ImgsProductDao imgsProductDao;
    private static ProductServiceImpl instance;

    public ProductServiceImpl() {
        productDao = ProductDaoImpl.getInstance();
        imgsProductDao = ImgsProductDaoImpl.getInstance();
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

        ProductModel productModel = productDao.findById(id);
//        productModel.setInforImages(productDao.f);
        return productModel;
    }

    @Override
    public void findImgsProduct(ProductModel productModel) {
//        List<ImgModel> list = imgsProductDao.findByProductId(productModel.getId());
//        for (ImgModel item : list) {
//            productModel.getInforImages().add(item.getName());
//        }
    }

    @Override
    public void delete(Long id) {

    }

    @Override
    public String add(ProductModel newProduct) {
        newProduct.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        newProduct.setCreatedBy("Đặng Công Thuận");
        if (productDao.checkExits(newProduct.getName())) {
            return "exists-product";
        } else {
            Long productId = productDao.add(newProduct);
//          nếu update thành công thì trả về product mới có giá trị không có giá trị và set message success
            if (productId != null) {
                imgsProductDao.addThumbnail(findImgId(newProduct.getThumbnail(), newProduct), productId);
                newProduct.setId(productId);
                productDao.addProductDetail(newProduct);
                for (String item : newProduct.getInforImages()) {
                    if (imgsProductDao.addDetailImg(findImgId(item, newProduct), productId) == null) {
                        return "add-img-product-fail";
                    }
                }
              return "add-product-success";
            }
        }
        return "add-product-fail";
    }

    Long findImgId(String name, ProductModel productModel) {
        if (!imgsProductDao.checkExitImg(name)) {
            return imgsProductDao.addImg(name, productModel);
        } else {
            return imgsProductDao.findImgIdByName(name);
        }
    }


    @Override
    public ProductModel update(ProductModel productUpdated) {
        return null;
    }

//    @Override
//    public void addInforImgs(List<String> listImgs, ProductModel productModel) {
//        Long id = productModel.getId();
//        for (String item : listImgs) {
//            productDao.addInforImgs(item, id);
//        }
//    }
}
