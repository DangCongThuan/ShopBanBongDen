<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 2/10/2023
  Time: 5:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<!-- forms-editor.html  21 Nov 2019 03:55:08 GMT -->
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Otika - Admin Dashboard Template</title>
    <!-- General CSS Files -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/app.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/bundles/summernote/summernote-bs4.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/bundles/jquery-selectric/selectric.css"/>">
    <!-- Library Js Files -->
    <!-- Template CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/components.css"/>">
    <!-- Custom style CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/custom.css"/>">
    <script src="<c:url value="/assets/admin/bundles/ckeditor/ckeditor.js"/>"></script>
</head>

<body>
<div>
    <script>
        iziToast.success({
            title: 'Hello, world!',
            message: 'This ' + ${cateModel.message} + 'iziToast',
            position: 'topRight'
        });
    </script>
    <div class="modal-header">
        <c:if test="${empty cateModel.id}">
            <h5 class="modal-title" id="formModal">Thêm danh mục sản phẩm</h5>
        </c:if>
        <c:if test="${not empty cateModel.id}">
            <h5 class="modal-title" id="formModal">Chỉnh sửa danh mục sản phẩm</h5>
        </c:if>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <div class="modal-body">
        <form id="categoryForm">
            <div class="form-group">
                <label>Tên</label>
                <div>
                    <input id="name" name="name" type="text" value="${cateModel.name}" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label>Trạng thái</label>
                <div>
                    <select id="status" name="status" class="form-control selectric">
                        <option ${cateModel.status == 1 ? "selected" : ""} value="1">Hiển thị</option>
                        <option ${cateModel.status == 0 ? "selected" : ""} value="0">Ẩn</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label>Mô tả</label>
                <div>
                    <textarea id="description" name="description" class="summernote">${cateModel.description}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label></label>
                <div>
                    <button type="button" id="addOrEditCategoryBtn" class="btn btn-primary">
                        ${cateModel.id != null ? "Chỉnh sửa" : "Thêm"}
                    </button>
                </div>
            </div>
            <input type="hidden" value="${cateModel.id}" id="id" name="id"/>
        </form>
    </div>
</div>

<!-- General JS Scripts -->
<script src="<c:url value="/assets/admin/js/app.min.js"/>"></script>
<!-- JS Libraies -->
<script src="<c:url value="/assets/admin/bundles/summernote/summernote-bs4.js"/>"></script>
<script src="<c:url value="/assets/admin/bundles/jquery-selectric/jquery.selectric.min.js"/>"></script>
<!-- Template JS File -->
<script src="<c:url value="/assets/admin/js/scripts.js"/>"></script>
<!-- Custom JS File -->
<script src="<c:url value="/assets/admin/js/custom.js"/>"></script>
</body>


<!-- forms-editor.html  21 Nov 2019 03:55:16 GMT -->
</html>
