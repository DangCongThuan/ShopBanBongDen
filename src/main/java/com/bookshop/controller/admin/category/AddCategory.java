package com.bookshop.controller.admin.category;

import com.bookshop.model.CategoryModel;
import com.bookshop.services.ICategoryService;
import com.bookshop.services.impl.CategoryServiceImpl;
import com.bookshop.utils.FormUtils;

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
        response.setCharacterEncoding("UTF-8");
        CategoryModel categoryModel = FormUtils.toModel(CategoryModel.class, request);
        categoryModel.setCreatedBy("Dang Cong Thuan");
        String result = categoryService.add(categoryModel);
        response.setContentType("text/plain");
        response.getWriter().write(result);
    }
}
