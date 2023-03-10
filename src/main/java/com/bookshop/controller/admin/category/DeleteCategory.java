package com.bookshop.controller.admin.category;

import com.bookshop.services.ICategoryService;
import com.bookshop.services.impl.CategoryServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = {"/delete-category", "/admin/category/delete"})
public class DeleteCategory extends HttpServlet {
    private ICategoryService categoryService = CategoryServiceImpl.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        response.setCharacterEncoding("UTF-8");
        String message = "";
        if (id != null) {
            categoryService.delete(id);
            if (categoryService.findById(id) == null) {
                message = "success";
            }
            else {
                message = "fail";
            }
        }
        response.getWriter().write(message);
    }
}
