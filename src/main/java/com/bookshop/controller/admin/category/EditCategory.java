package com.bookshop.controller.admin.category;

import com.bookshop.model.CategoryModel;
import com.bookshop.services.ICategoryService;
import com.bookshop.services.impl.CategoryServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "danh-mục", value = "/admin/category/edit")
public class EditCategory extends HttpServlet {
    private ICategoryService categoryService = CategoryServiceImpl.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryModel categoryModel = new CategoryModel();
        categoryModel.setId(Long.parseLong(request.getParameter("id")));
        categoryModel.setMessage(request.getParameter("message"));
        if (categoryModel.getId() != null) {
            categoryModel = categoryService.findById(categoryModel.getId());
        }
        request.setAttribute("cateModel", categoryModel);
        request.getRequestDispatcher("/views/admin/category/edit-category.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
        CategoryModel categoryModel = new CategoryModel();
        categoryModel.setName(request.getParameter("name"));
        categoryModel.setDescription(request.getParameter("description"));
        categoryModel.setStatus(Integer.parseInt(request.getParameter("status")));
        categoryModel.setId(Long.parseLong(request.getParameter("id")));
        if (categoryModel.getId() == null) {

        } else {
            categoryModel.setModifiedBy("dang cong thuan");
            categoryModel = categoryService.update(categoryModel);
        }
        request.setAttribute("cateModel", categoryModel);
        request.getRequestDispatcher("/views/admin/category/edit-category.jsp").forward(request, response);
//        response.sendRedirect(request.getContextPath() + "/admin-category-table?message=" + categoryModel.getMessage());
    }


}
