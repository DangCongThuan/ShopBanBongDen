package com.bookshop.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.ResourceBundle;

public class ConnectionPoolImpl implements GPConnectionPool{
    
    private static ConnectionPoolImpl instance;

    private static final LinkedList<Connection> availableConnections = new LinkedList<>();
    private String url;
    private String host;
    private String port;
    private String userName;
    private String pass;
    private String databaseName;
    private int maxConnection;

    public ConnectionPoolImpl(String url, String host, String port, String userName, String pass, String databaseName, int maxConnection) {
        this.url = url;
        this.host = host;
        this.port = port;
        this.userName = userName;
        this.pass = pass;
        this.databaseName = databaseName;
        this.maxConnection = maxConnection;
        initializeConnectionPool();
    }
    
    public static ConnectionPoolImpl getInstance() {
        if (instance == null) {
            ResourceBundle rb = ResourceBundle.getBundle("db");
            String url = rb.getString("url");
            String host = rb.getString("host");
            String port = rb.getString("port");
            String userName = rb.getString("userName");
            String pass = rb.getString("pass");
            String databaseName = rb.getString("databaseName");
            int maxConnection = Integer.parseInt(rb.getString("maxConnection"));
            instance = new ConnectionPoolImpl(url, host, port, userName, pass, databaseName, maxConnection);
        }
        return instance;
    }


    private synchronized void initializeConnectionPool() {
        try {
            while (!checkIfConnectionPoolIsFull()) {
                String connectionURL = url + host + ":" + port + "/" + databaseName +"";
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                Connection newConnection = DriverManager.getConnection(connectionURL, userName, pass);
                availableConnections.add(newConnection);
                System.out.println(availableConnections.size());
            }
            notifyAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private boolean checkIfConnectionPoolIsFull() {
        return availableConnections.size() >= maxConnection;
    }

    @Override
    public synchronized Connection getConnection() {
        while(availableConnections.size() == 0) {
            // Wait for an existing connection to be freed up.
            try {
                wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        // Retrieves and removes the first element of this list
        return availableConnections.poll();
    }

    @Override
    public synchronized boolean releaseConnection(Connection connection) {
        try {
            if (connection.isClosed()) {
                initializeConnectionPool();
            } else {
                // Adds the specified element as the last element of this list
                boolean isReleased = availableConnections.offer(connection);
                // Wake up threads that are waiting for a connection
                notifyAll();
                return isReleased;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public synchronized String toString() {
        StringBuilder sb = new StringBuilder()
                .append("Max=" + maxConnection)
                .append(" | Available=" + availableConnections.size())
                .append(" | Busy=" + (maxConnection - availableConnections.size()))
                ;
        return sb.toString();
    }
}
