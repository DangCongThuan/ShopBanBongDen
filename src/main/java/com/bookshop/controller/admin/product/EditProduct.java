package com.bookshop.controller.admin.product;

import com.bookshop.model.ProductModel;
import com.bookshop.services.ICategoryService;
import com.bookshop.services.IProductService;
import com.bookshop.services.impl.CategoryServiceImpl;
import com.bookshop.services.impl.ProductServiceImpl;
import com.bookshop.utils.FormUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/admin/product/edit")
public class EditProduct extends HttpServlet {
    private IProductService productService = ProductServiceImpl.getInstance();
    private ICategoryService categoryService = CategoryServiceImpl.getInstance();
    private ServletFileUpload uploader = null;
    private String path;

    @Override
    public void init() throws ServletException {
        DiskFileItemFactory fileFactory = new DiskFileItemFactory();
        File filesDir = (File) getServletContext().getAttribute("FILES_DIR_FILE");
        fileFactory.setRepository(filesDir);
        this.uploader = new ServletFileUpload(fileFactory);
        this.path = (String) getServletContext().getAttribute("FILES_DIR");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel productModel = FormUtils.toModel(ProductModel.class, request);
        if (productModel.getId() != null) {
            productModel = productService.findToEdit(productModel.getId());
            request.setAttribute("productModel", productModel);
        }
        request.setAttribute("cateList", categoryService.findAll());
        request.getRequestDispatcher("/views/admin/product/edit-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel newProductModel = new ProductModel();
        String message = "";
        try {
            List<FileItem> items = uploader.parseRequest(request);
            FormUtils.toProductModel(items, newProductModel, path);
        } catch (FileUploadException e) {
            message = "Thêm hình ảnh không thành công";
        } catch (Exception e) {
            message = "Chỉnh sửa sản phẩm không thành công";
        }
        if (StringUtils.isBlank(message)) {
            message = productService.update(newProductModel);
        }
        response.setContentType("text/plain");
        response.getWriter().write(message);
    }
}
