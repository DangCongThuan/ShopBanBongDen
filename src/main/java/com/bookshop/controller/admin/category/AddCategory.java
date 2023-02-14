package com.bookshop.controller.admin.category;

import com.bookshop.model.CategoryModel;
import com.bookshop.services.ICategoryService;
import com.bookshop.services.impl.CategoryServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/category/add"})
public class AddCategory extends HttpServlet {
    private ICategoryService categoryService = CategoryServiceImpl.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/admin/category/edit-category.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        CategoryModel categoryModel = new CategoryModel();
        categoryModel.setName(request.getParameter("name"));
        categoryModel.setDescription(request.getParameter("description"));
        categoryModel.setStatus(Integer.parseInt(request.getParameter("status")));
        categoryModel.setCreatedBy("Đặng Công Thuận");
        categoryModel = categoryService.add(categoryModel);
        request.setAttribute("cateModel", categoryModel);
        request.getRequestDispatcher("/views/admin/category/edit-category.jsp").forward(request, response);
    }
}
