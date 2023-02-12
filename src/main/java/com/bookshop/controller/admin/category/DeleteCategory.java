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
        Long id = Long.parseLong(request.getParameter("id"));
        if (id != null) {
            categoryService.delete(id);
            request .setAttribute("cateList", categoryService.findAll());
            request.setAttribute("message", "xóa thành công");
//            String message = "xóa thành công";
//            response.sendRedirect(request.getContextPath() + "/admin-category-table?message=" + message);
        }
        request.getRequestDispatcher("/views/admin/category/category-table.jsp").forward(request, response);
//        request.getRequestDispatcher("/admin-category-table").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
