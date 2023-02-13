package com.bookshop.utils;

import javax.servlet.http.HttpServletRequest;
import java.util.ResourceBundle;

public class MessageUtils {
    private static ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

    public static void getMessage(HttpServletRequest request) {
        try {
            String message = resourceBundle.getString(request.getParameter("message"));
            request.setAttribute("message", message);
            request.setAttribute("status", request.getParameter("status"));
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public static void setMessage(HttpServletRequest request, String message, String status) {
        try {
            String respondMessage = resourceBundle.getString(message);
            request.setAttribute("message", respondMessage);
            request.setAttribute("status", status);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
