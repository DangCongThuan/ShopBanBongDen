package com.bookshop.controller.admin.product;

import com.bookshop.services.IProductService;
import com.bookshop.services.impl.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(value = "/admin/product/delete")
public class DeleteProduct extends HttpServlet {
    private IProductService productService = ProductServiceImpl.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        response.setCharacterEncoding("UTF-8");
        String message = "";
        if (id != null) {
            message = productService.delete(id);
        }
        response.getWriter().write(message);
    }
}
