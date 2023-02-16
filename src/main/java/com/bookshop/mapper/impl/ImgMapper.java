package com.bookshop.mapper.impl;

import com.bookshop.mapper.IRowMapper;
import com.bookshop.model.ImgModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ImgMapper implements IRowMapper<ImgModel> {
    @Override
    public ImgModel mapRow(ResultSet rs) {
        try {
            ImgModel fileModel = new ImgModel();
            fileModel.setId(rs.getLong("img_id"));
            fileModel.setName(rs.getString("img_name"));
            return fileModel;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
