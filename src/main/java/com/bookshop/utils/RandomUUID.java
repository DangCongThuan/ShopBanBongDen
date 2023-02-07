package com.bookshop.utils;

import java.util.UUID;

public class RandomUUID {
    private static RandomUUID instance;
    public RandomUUID() {
    }

    public static RandomUUID getInstance() {
        if (instance == null) {
            return new RandomUUID();
        }
        return instance;
    }

    public String getId() {
        return UUID.randomUUID().toString();
    }


}
