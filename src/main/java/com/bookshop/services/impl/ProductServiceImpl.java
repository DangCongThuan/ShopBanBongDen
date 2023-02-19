package com.bookshop.services.impl;

import com.bookshop.dao.IProductDao;
import com.bookshop.dao.ImgsProductDao;
import com.bookshop.dao.impl.ImgsProductDaoImpl;
import com.bookshop.dao.impl.ProductDaoImpl;
import com.bookshop.model.ImgModel;
import com.bookshop.model.ProductModel;
import com.bookshop.paging.Pageble;
import com.bookshop.services.IProductService;
import org.apache.commons.lang3.StringUtils;

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
    public List<ProductModel> findToTable() {
        return productDao.findToTable();
    }

    @Override
    public ProductModel findById(Long id) {
        ProductModel productModel = productDao.findById(id);
//        productModel.setInforImages(productDao.f);
        productModel.setThumbnail(imgsProductDao.findThumbnail(id).getName());
        return productModel;
    }

    @Override
    public ProductModel findToEdit(Long id) {
        ProductModel productModel = productDao.findToEdit(id);
        productModel.setThumbnail(imgsProductDao.findThumbnail(id).getName());
        List<ImgModel> list = imgsProductDao.findDetailImg(id);
        for (ImgModel item : list) {
            productModel.getInforImages().add(item.getName());
        }
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
    public String delete(Long id) {
        productDao.softDelete(id);
        if (productDao.checkExits(id)) {
            return "fails";
        }
        return "success";
    }

    @Override
    public String add(ProductModel newProduct) {
        newProduct.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        newProduct.setCreatedBy("Đặng Công Thuận");
        if (productDao.checkExits(newProduct.getName())) {
            return "exists-product";
        } else {
            Long productId = productDao.add(newProduct);
//          nếu add thành công thì trả về product mới có giá trị không có giá trị và set message success
            if (productId != null) {
                imgsProductDao.addThumbnail(findImgId(newProduct.getThumbnail(), newProduct.getCreatedBy()), productId);
                newProduct.setId(productId);
                productDao.addProductDetail(newProduct);
                for (String item : newProduct.getInforImages()) {
                    if (imgsProductDao.addDetailImg(findImgId(item, newProduct.getCreatedBy()), productId) == null) {
                        return "add-img-product-fail";
                    }
                }
                return "add-product-success";
            }
        }
        return "add-product-fail";
    }

    Long findImgId(String name, String cratedBy) {
        if (!imgsProductDao.checkExitImg(name)) {
            return imgsProductDao.addImg(name, cratedBy);
        } else {
            return imgsProductDao.findImgIdByName(name);
        }
    }


    @Override
    public String update(ProductModel productUpdated) {
        productUpdated.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        productUpdated.setModifiedBy("Đặng Công Thuận");
        productDao.update(productUpdated);
        productDao.updateProductDetail(productUpdated);
        if (StringUtils.isNotBlank(productUpdated.getThumbnail())) {
            imgsProductDao.deleteThumbnail(productUpdated.getId());
            imgsProductDao.addThumbnail(findImgId(productUpdated.getThumbnail(), productUpdated.getModifiedBy()), productUpdated.getId());
        }
        if (!productUpdated.getInforImages().isEmpty()) {
            imgsProductDao.deleteDetailImg(productUpdated.getId());
            for (String item : productUpdated.getInforImages()) {
                if (imgsProductDao.addDetailImg(findImgId(item, productUpdated.getModifiedBy()), productUpdated.getId()) == null) {
                    return "Lỗi cập nhật hình ảnh mô tả sản phẩm";
                }
            }
        }
        return "thành công";
    }



}
