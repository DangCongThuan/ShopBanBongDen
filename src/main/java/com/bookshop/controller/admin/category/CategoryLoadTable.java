package com.bookshop.controller.admin.category;

import com.bookshop.services.ICategoryService;
import com.bookshop.services.impl.CategoryServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "bang-danh-muc", value = "/admin/category/table")
public class CategoryLoadTable extends HttpServlet {
    private ICategoryService categoryService = CategoryServiceImpl.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("message", request.getParameter("message"));
        request.setAttribute("cateList", categoryService.findAll());
        request.getRequestDispatcher("/views/admin/category/category-table.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
