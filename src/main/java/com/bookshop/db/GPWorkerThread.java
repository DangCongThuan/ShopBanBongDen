package com.bookshop.db;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.concurrent.CountDownLatch;

class GPWorkerThread extends Thread {

    private String taskName;
    private CountDownLatch latch;

    public GPWorkerThread(CountDownLatch latch, String taskName) {
        this.taskName = taskName;
        this.latch = latch;
    }

    @Override
    public void run() {
        System.out.println(Thread.currentThread().getName() + " Starting. Task = " + taskName);
        execute();
        latch.countDown();
        System.out.println(Thread.currentThread().getName() + " Finished.");
    }

    private void execute() {
        try {
            String sqlSelect = "SELECT COUNT(*) AS total FROM user";
            Connection connection = GPDataSource.getConnection();
            try (Statement st = connection.createStatement();
                 ResultSet rs = st.executeQuery(sqlSelect);) {
                Thread.sleep(2000);
                rs.next();
                System.out.println("Task = " + taskName + ": Run SQL successfully " + rs.getInt("total"));
            }
            GPDataSource.releaseConnection(connection);
        } catch (SQLException | InterruptedException e) {
            e.printStackTrace();
        }
    }
}