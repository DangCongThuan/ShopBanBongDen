package com.bookshop.mapper.impl;

import com.bookshop.mapper.IRowMapper;
import com.bookshop.model.RoleModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RoleMapper implements IRowMapper<RoleModel> {
    @Override
    public RoleModel mapRow(ResultSet rs) {
        try {
            RoleModel roleModel = new RoleModel();
            roleModel.setId(rs.getLong("role_id"));
            roleModel.setName(rs.getString("role_name"));
            return roleModel;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
