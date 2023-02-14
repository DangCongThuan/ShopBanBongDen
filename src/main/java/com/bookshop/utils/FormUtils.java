package com.bookshop.utils;

import com.bookshop.model.ProductModel;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

public class FormUtils {
    @SuppressWarnings("unchecked")
    public static <T> T toModel(Class<T> clazz, HttpServletRequest request) {
        T object = null;
        try {
            object = clazz.newInstance();
            BeanUtils.populate(object, request.getParameterMap());
        } catch (InstantiationException | IllegalAccessException | InvocationTargetException e) {
            System.out.print(e.getMessage());
        }
        return object;
    }
    public static void toProductModel(List<FileItem> items, ProductModel newProductModel, String path) throws Exception {
        for (FileItem item : items) {
            if (item.isFormField()) {
                if (item.getFieldName().equals("name")) {
                    newProductModel.setName(item.getString("UTF-8"));
                } else if (item.getFieldName().equals("price")) {
                    newProductModel.setPrice(Long.parseLong(item.getString("UTF-8")));
                } else if (item.getFieldName().equals("categoryId")) {
                    newProductModel.setCategoryId(Long.parseLong(item.getString("UTF-8")));
                } else if (item.getFieldName().equals("status")) {
                    newProductModel.setStatus(Integer.parseInt(item.getString()));
                } else if (item.getFieldName().equals("description")) {
                    newProductModel.setDescription(item.getString("UTF-8"));
                }
            } else {
                if (StringUtils.isBlank(item.getName())) {
                    item.delete();
                    continue;
                } else if (item.getFieldName().equals("thumbnail-1")) {
                    newProductModel.setThumbnail1(item.getName());
                } else if (item.getFieldName().equals("thumbnail-2")) {
                    newProductModel.setThumbnail2(item.getName());
                } else if (item.getFieldName().equals("infors[]")) {
                    newProductModel.getInforImages().add(item.getName());
                }
                File file = new File(path + File.separator + item.getName());
                if (!file.exists()) {
                    item.write(file);
                }else {
                    item.delete();
                }
            }
        }
    }
}
