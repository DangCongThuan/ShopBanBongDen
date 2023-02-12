package com.bookshop.controller.admin.product;

import com.bookshop.model.ProductModel;
import com.bookshop.services.ICategoryService;
import com.bookshop.services.IProductService;
import com.bookshop.services.impl.CategoryServiceImpl;
import com.bookshop.services.impl.ProductServiceImpl;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/admin/product/add")
public class AddProduct extends HttpServlet {
    private IProductService productService = ProductServiceImpl.getInstance();
    private ServletFileUpload uploader = null;

    @Override
    public void init() throws ServletException {
        DiskFileItemFactory fileFactory = new DiskFileItemFactory();
        File filesDir = (File) getServletContext().getAttribute("FILES_DIR_FILE");
        fileFactory.setRepository(filesDir);
        this.uploader = new ServletFileUpload(fileFactory);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ICategoryService categoryService = CategoryServiceImpl.getInstance();
        request.setAttribute("cateList", categoryService.findAll());
        request.getRequestDispatcher("/views/admin/product/edit-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel newProductModel = new ProductModel();
        List<String> inforImgs = new ArrayList<>();
        try {
            List<FileItem> items = uploader.parseRequest(request);
            for (FileItem item : items) {
                if (item.isFormField()) {
                    if (item.getFieldName().equals("name")) {
                        newProductModel.setName(item.getString());
                    } else if (item.getFieldName().equals("price")) {
                        newProductModel.setPrice(Long.parseLong(item.getString()));
                    } else if (item.getFieldName().equals("categoryId")) {
                        newProductModel.setCategoryId(Long.parseLong(item.getString()));
                    } else if (item.getFieldName().equals("status")) {
                        newProductModel.setStatus(Integer.parseInt(item.getString()));
                    } else if (item.getFieldName().equals("description")) {
                        newProductModel.setDescription(item.getString());
                    }
                } else {
                    if (StringUtils.isBlank(item.getName())) {
                        item.delete();
                    }
                    if (item.getFieldName().equals("thumbnail-1")) {
                        newProductModel.setThumbnail1(item.getName());
                    } else if (item.getFieldName().equals("thumbnail-2")) {
                        newProductModel.setThumbnail2(item.getName());
                    } else if (item.getFieldName().equals("infors[]")) {
                        inforImgs.add(item.getName());
                    }
                    File file = new File(request.getServletContext().getAttribute("FILES_DIR") + File.separator + item.getName());
                    System.out.println(file.getAbsolutePath());
                    if (!file.exists()) {
                        item.write(file);
                    }
                }
            }
            newProductModel = productService.add(newProductModel);
//            productService.addInforImgs(inforImgs, newProductModel);
        } catch (FileUploadException e) {
                newProductModel.setMessage("Lỗi tải lên hình ảnh");
        } catch (Exception e) {
            newProductModel.setMessage("Thêm sản phẩm không thành công");
        }
        request.setAttribute("productModel", newProductModel);
        request.getRequestDispatcher("/views/admin/product/edit-product.jsp").forward(request, response);
    }
}
