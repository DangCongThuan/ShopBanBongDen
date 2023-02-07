package com.bookshop.dao.impl;

import com.bookshop.dao.IProductDao;
import com.bookshop.mapper.impl.ProductMapper;
import com.bookshop.model.ProductModel;
import com.bookshop.paging.Pageble;
import org.apache.commons.lang3.StringUtils;

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
}
