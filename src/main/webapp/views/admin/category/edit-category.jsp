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
    <link rel="stylesheet" href="<c:url value="/assets/admin/bundles/izitoast/css/iziToast.min.css"/>">
    <!-- Library Js Files -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="<c:url value="/assets/admin/bundles/izitoast/js/iziToast.min.js"/>"></script>
    <!-- Template CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/components.css"/>">
    <!-- Custom style CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/custom.css"/>">
    <link rel='shortcut icon' type='image/x-icon' href='<c:url value="/assets/admin/img/favicon.ico"/>'/>
    <script src="<c:url value="/assets/admin/bundles/ckeditor/ckeditor.js"/>"></script>
</head>

<body>
<div class="loader"></div>
<div id="app">
    <c:if test="${not empty cateModel.message}">
        <script>

            iziToast.success({
                title: 'Hello, world!',
                message: '${cateModel.message}',
                position: 'topRight'
            });
        </script>
    </c:if>
    <div class="main-wrapper main-wrapper-1">
        <jsp:include page="/pages/admin/header.jsp"/>
        <jsp:include page="/pages/admin/main-side-bar.jsp"/>
        <!-- Main Content -->
        <div class="main-content">
            <section class="section">
                <div class="section-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4>${cateModel.id == null ? "Thêm sản phẩm mới" : "Chỉnh sửa sản phẩm"}</h4>
                                </div>
                                <div class="card-body">
                                    <c:if test="${not empty cateModel.id}">
                                        <c:url value="/admin/category/edit" var="urlFrom"/>
                                    </c:if>
                                    <c:if test="${empty cateModel.id}">
                                        <c:url value="/admin/category/add" var="urlFrom"/>
                                    </c:if>
                                    <form id="categoryForm" action="${urlFrom}" method="post">
                                        <c:if test="${not empty cateModel.id}">
                                            <div class="form-group">
                                                <label>Id</label>
                                                <div>
                                                    <input value="${cateModel.id}" disabled class="form-control">
                                                </div>
                                            </div>
                                        </c:if>
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
                                                <button type="submit" class="btn btn-primary">
                                                    ${cateModel.id != null ? "Chỉnh sửa" : "Thêm"}
                                                </button>
                                            </div>
                                        </div>
                                        <input type="hidden" value="${cateModel.id}" id="id" name="id"/>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
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
