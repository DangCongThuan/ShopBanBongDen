package com.bookshop.dao.impl;

import com.bookshop.model.ImgsProductModel;

public class Test2 {
    public static void main(String[] args) {
        ImgsProductModel imgsProductModel = new ImgsProductModel();
        String a = imgsProductModel.getName();
        Object resutl = imgsProductModel.getName();
        Object resutl2 = 1;
        System.out.println(resutl);
        System.out.println(resutl2);
    }
}
