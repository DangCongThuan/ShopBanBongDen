package com.bookshop.controller.admin.product;

import com.bookshop.services.IProductService;
import com.bookshop.services.impl.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(value = "/admin/product/table")
public class ProductLoadTable extends HttpServlet {
    private IProductService productService = ProductServiceImpl.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("productList", productService.findToTable());
        request.getRequestDispatcher("/views/admin/product/product-table.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
