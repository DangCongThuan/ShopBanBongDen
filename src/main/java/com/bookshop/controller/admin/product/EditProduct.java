package com.bookshop.controller.admin.product;

import com.bookshop.model.ProductModel;
import com.bookshop.services.ICategoryService;
import com.bookshop.services.IProductService;
import com.bookshop.services.impl.CategoryServiceImpl;
import com.bookshop.services.impl.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/product/edit", "/admin/product/create", "/admin/product"})
public class EditProduct extends HttpServlet {
    private IProductService productService = ProductServiceImpl.getInstance();
    private ICategoryService categoryService = CategoryServiceImpl.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel productModel = new ProductModel();
        productModel.setId(Long.parseLong(request.getParameter("id")));
        if (productModel.getId() != null) {
            productModel = productService.findById(productModel.getId());
            productService.findImgsProduct(productModel);
        }
        request.setAttribute("productModel", productModel);
        request.setAttribute("cateList", categoryService.findAll());
        request.getRequestDispatcher("/views/admin/product/edit-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
