package com.bookshop.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class GPDataSource {

    private static final GPConnectionPool gpPool = ConnectionPoolImpl.getInstance();

    private GPDataSource() {
        super();
    }

    public static Connection getConnection() {
        Connection connection = gpPool.getConnection();
        System.out.println("GPPool status: " + gpPool);
        return connection;
    }

    public static boolean releaseConnection(ResultSet rs, Statement st, Connection conn) throws SQLException {
        if (st != null)
            st.close();
        if (rs != null)
            rs.close();
        return gpPool.releaseConnection(conn);
    }
    public static boolean releaseConnection(Connection conn) throws SQLException {
        return gpPool.releaseConnection(conn);
    }
}