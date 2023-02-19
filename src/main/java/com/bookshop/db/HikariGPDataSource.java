package com.bookshop.db;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import java.sql.*;
import java.util.ResourceBundle;

public class HikariGPDataSource {
    private static ResourceBundle rb = ResourceBundle.getBundle("db");
    private static String url = rb.getString("url");
    private static String host = rb.getString("host");
    private static String port = rb.getString("port");
    private static String userName = rb.getString("userName");
    private static String pass = rb.getString("pass");
    private static String databaseName = rb.getString("databaseName");
    private static int maxConnection = Integer.parseInt(rb.getString("maxConnection"));
    private  static String connectionURL = url + host + ":" + port + "/" + databaseName +"";

    private static HikariConfig config = new HikariConfig();
    private static HikariDataSource ds;
    static {
        config.setDriverClassName("com.mysql.cj.jdbc.Driver");
        config.setJdbcUrl(connectionURL);
        config.setUsername(userName);
        config.setPassword(pass);
        config.setMinimumIdle(10);
        config.setMaximumPoolSize(20);
        config.addDataSourceProperty("cachePrepStmts", "true");
        config.addDataSourceProperty("prepStmtCacheSize", "250");
        config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");
        ds = new HikariDataSource(config);
    }
    private HikariGPDataSource(){}
    public static Connection getConnection() throws SQLException {
        return ds.getConnection();
    }

}