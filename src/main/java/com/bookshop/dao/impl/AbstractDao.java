package com.bookshop.dao.impl;

import com.bookshop.db.GPDataSource;
import com.bookshop.mapper.IRowMapper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AbstractDao<T> {
    private static void setParameter(PreparedStatement statement, Object... parameters) {
        try {
            for (int i = 0; i < parameters.length; i++) {
                int index = i + 1;
                Object parameter = parameters[i];
                if (parameter instanceof Long) {
                    statement.setLong(index, (Long) parameter);
                } else if (parameter instanceof String) {
                    statement.setString(index, (String) parameter);
                } else if (parameter instanceof Integer) {
                    statement.setInt(index, (Integer) parameter);
                } else if (parameter instanceof Timestamp) {
                    statement.setTimestamp(index, (Timestamp) parameter);
                } else if (parameter instanceof Double) {
                    statement.setDouble(index, (Double) parameter);
                } else if (parameter instanceof Date) {
                    statement.setDate(index, (Date) parameter);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<T> query(String sql, IRowMapper<T> rowMapper, Object... parameters) {
        List<T> results = new ArrayList<>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = GPDataSource.getConnection();
            preparedStatement = connection.prepareStatement(sql);
            setParameter(preparedStatement, parameters);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                results.add(rowMapper.mapRow(resultSet));
            }
            return results;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                GPDataSource.releaseConnection(resultSet, preparedStatement, connection);
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }
    }
}
