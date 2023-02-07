package com.bookshop.controller.web;

import com.bookshop.paging.Pageble;
import com.bookshop.services.ICategoryService;
import com.bookshop.services.IProductService;
import com.bookshop.services.impl.CategoryServiceImpl;
import com.bookshop.services.impl.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "shop", urlPatterns = {"/shop"})
public class ShopController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IProductService productService = ProductServiceImpl.getInstance();
        ICategoryService categoryService = CategoryServiceImpl.getInstance();
        Pageble pageble = new Pageble(1, 16);
        request.setAttribute("productList", productService.findAll(pageble));
        request.setAttribute("categoryList", categoryService.findAll());

        request.getRequestDispatcher("/views/web/shop.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
