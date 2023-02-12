package com.bookshop.db;

import java.sql.*;
import java.util.ArrayList;
import java.util.ResourceBundle;

public class GPDataSource {
    private static ResourceBundle rb = ResourceBundle.getBundle("db");
    private static String url = rb.getString("url");
    private static String host = rb.getString("host");
    private static String port = rb.getString("port");
    private static String userName = rb.getString("userName");
    private static String pass = rb.getString("pass");
    private static String databaseName = rb.getString("databaseName");
    private static int maxConnection = Integer.parseInt(rb.getString("maxConnection"));
//    private static final GPConnectionPool gpPool = new ConnectionPoolImpl(url, host, port, userName, pass, databaseName, maxConnection);
private static final GPConnectionPool gpPool = ConnectionPoolImpl.getInstance();
    private GPDataSource() {
        super();
    }

    public static Connection getConnection() {
        Connection connection = gpPool.getConnection();
        System.out.println("GPPool status: " + gpPool);
        return connection;
    }

    public static boolean releaseConnection(Statement st, Connection conn) throws SQLException {
        if (st != null)
            st.close();
        return gpPool.releaseConnection(conn);
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

    public static void main(String[] args) throws SQLException {
            System.out.println("connec " +  " : " + GPDataSource.getConnection().toString());


    }
}