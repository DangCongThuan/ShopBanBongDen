package com.bookshop.db;

import java.sql.SQLException;
import java.util.concurrent.CountDownLatch;

public class GPConnectionPoolExample {
    private static final int NUMBER_OF_USERS = 8;

    public static void main(String[] args) throws SQLException, InterruptedException {
        final CountDownLatch latch = new CountDownLatch(NUMBER_OF_USERS);
        for (int i = 1; i <= NUMBER_OF_USERS; i++) {
            Thread worker = new GPWorkerThread(latch, "" + i);
            worker.start();
        }
        latch.await();
        System.out.println("DONE All Tasks");
    }
}
