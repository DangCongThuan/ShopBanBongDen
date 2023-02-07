package com.bookshop.controller.admin;

import com.bookshop.model.CategoryModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "admin-category", value = "/admin-category")
public class AdminCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryModel categoryModel = new CategoryModel();
        categoryModel.setName(request.getParameter("name"));
        categoryModel.setDescription(request.getParameter("description"));
    }
}
