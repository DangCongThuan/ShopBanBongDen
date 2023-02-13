package com.bookshop.mapper.impl;

import com.bookshop.mapper.IRowMapper;
import com.bookshop.model.ImgsProductModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ImgsProductMapper implements IRowMapper<ImgsProductModel> {
    @Override
    public ImgsProductModel mapRow(ResultSet rs) {
        try {
            ImgsProductModel fileModel = new ImgsProductModel();
            fileModel.setId(rs.getLong("image_id"));
            fileModel.setName(rs.getString("image_name"));
            return fileModel;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
