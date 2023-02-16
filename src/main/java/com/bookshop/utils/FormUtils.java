package com.bookshop.utils;

import com.bookshop.model.ProductModel;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
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
        HashMap<String, String> map = new HashMap<>();
        ArrayList<String> list = new ArrayList<>();
        for (FileItem item : items) {
            if (item.isFormField()) {
                map.put(item.getFieldName(), item.getString("UTF-8"));
            } else {
                if (StringUtils.isBlank(item.getName())) {
                    item.delete();
                    continue;
                } else if (item.getFieldName().equals("thumbnail")) {
                    map.put("thumbnail", item.getName());
                }  else if (item.getFieldName().equals("infors[]")) {
                    list.add(item.getName());
                }
                File file = new File(path + File.separator + item.getName());
                if (!file.exists()) {
                    item.write(file);
                }else {
                    item.delete();
                }
            }
        }
        BeanUtils.populate(newProductModel, map);
        newProductModel.setInforImages(list);
    }
}
