package com.bookshop.controller.admin.category;

import com.bookshop.model.CategoryModel;
import com.bookshop.services.ICategoryService;
import com.bookshop.services.impl.CategoryServiceImpl;
import com.bookshop.utils.FormUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "danh-mục", value = "/admin/category/edit")
public class EditCategory extends HttpServlet {
    private ICategoryService categoryService = CategoryServiceImpl.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryModel categoryModel = FormUtils.toModel(CategoryModel.class, request);
        if (categoryModel.getId() != null) {
            categoryModel = categoryService.findById(categoryModel.getId());
        }
        request.setAttribute("cateModel", categoryModel);
        request.getRequestDispatcher("/views/admin/category/edit-category.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      CategoryModel categoryModel = FormUtils.toModel(CategoryModel.class, request);
        categoryModel.setModifiedBy("Dang Cong Thuan");
        String result = categoryService.update(categoryModel);
        response.setContentType("text/plain");
        response.getWriter().write(result);
    }


}
