<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 2/11/2023
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
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
    <script src="<c:url value="/assets/admin/bundles/izitoast/js/iziToast.min.js"/>"></script>
    <link href="<c:url value="/assets/commons/uploadImage/dist/image-uploader.min.css"/>" rel="stylesheet">
    <!-- Template CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/components.css"/>">
    <!-- Custom style CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/custom.css"/>">
    <link rel='shortcut icon' type='image/x-icon' href='<c:url value="/assets/admin/img/favicon.ico"/>'/>
    <script src="<c:url value="/assets/admin/bundles/ckeditor/ckeditor.js"/>"></script>
    <style>
        .card>a {
            visibility: hidden;
            /*position: relative;*/
        }

        .card:hover>a {
            visibility: visible;
            /*margin-top: -15px;*/
            /*position: fixed;*/
        }

    </style>
</head>

<body>
<div class="loader"></div>
<div id="app">
    <c:if test="${not empty message}">
        <script>

            iziToast.${status}({
                title: 'Thông báo!',
                message: '${message}',
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
                                    <h4>${productModel.id == null ? "Thêm sản phẩm mới" : "Chỉnh sửa sản phẩm"}</h4>
                                </div>
                                <div class="card-body">
                                    <c:if test="${productModel.id != null}">
                                        <c:url value="/admin/product/edit" var="urlFromProduct"/>
                                    </c:if>
                                    <c:if test="${productModel.id == null}">
                                        <c:url value="/admin/product/add" var="urlFromProduct"/>
                                    </c:if>
                                    <form id="productForm" action="${urlFromProduct}" enctype="multipart/form-data" accept-charset="UTF-8"
                                          method="post">
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label>Tên</label>
                                                <div>
                                                    <input id="name" name="name" type="text"
                                                           value="${productModel.name}"
                                                           class="form-control" required>
                                                </div>
                                            </div>
                                            <c:if test="${not empty productModel.id}">
                                                <div class="form-group col-md-6">
                                                    <label>Id</label>
                                                    <div>
                                                        <input disabled type="text" value="${productModel.id}"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                            </c:if>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label>Giá</label>
                                                <div>
                                                    <input id="price" name="price" type="text"
                                                           value="${productModel.price}"
                                                           class="form-control" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label>Danh mục</label>
                                                <div>
                                                    <select id="categoryId" name="categoryId"
                                                            class="form-control selectric">
                                                        <c:forEach items="${cateList}" var="item">
                                                            <option value="${item.id}" ${productModel.categoryId == item.id ? "selected" : ""}>${item.name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Trạng thái</label>
                                                <div>
                                                    <select id="status" name="status" class="form-control selectric">
                                                        <option ${productModel.status == 1 ? "selected" : ""} value="1">
                                                            Hiển
                                                            thị
                                                        </option>
                                                        <option ${productModel.status == 0 ? "selected" : ""} value="0">
                                                            Ẩn
                                                        </option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label>Hình ảnh mô tả 1</label>
                                                <p>
                                                    <input hidden id="thumbnail-1" type="file" name="thumbnail-1"
                                                           onchange="previewFile(this, 1);">
                                                </p>
                                                <label class="card d-block w-100 max-300" for="thumbnail-1">
                                                    <a href="#" id="rm-btn-1" class="btn btn-icon btn-danger"><i class="fas fa-times"></i></a>
                                                    <img data-crop-image="285" style="cursor: pointer"
                                                         class="d-block w-100" id="previewImg-1" data-toggle="tooltip"
                                                         data-placement="top" title="Hình ảnh mô tả 1. Nhấn vào để thay đổi"
                                                         src="<c:url value="/get/image?fileName=${productModel.thumbnail1}"/>"
                                                         >
                                                </label>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Hình ảnh mô tả 2</label>
                                                <p>
                                                    <input hidden type="file" name="thumbnail-2" id="photo-2"
                                                           onchange="previewFile(this, 2);">
                                                </p>
                                                <label class="card d-block w-100 max-300" for="photo-2">
                                                    <a href="#" id="rm-btn-2" class="btn btn-icon btn-danger"><i class="fas fa-times"></i></a>
                                                    <img data-crop-image="285" style="cursor: pointer"
                                                         class="d-block w-100" id="previewImg-2" data-toggle="tooltip"
                                                         data-placement="top" title="Hình ảnh mô tả 2. Nhấn vào để thay đổi"
                                                         src="<c:url value="/get/image?fileName=${productModel.thumbnail2}"/>"
                                                         >
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Thông tin bổ sung</label>
                                            <div id="image-infors" style="padding-top: .5rem;"></div>
                                        </div>
                                        <div class="form-group">
                                            <label>Mô tả</label>
                                            <div>
                                                <textarea id="description" name="description"
                                                          class="summernote">${productModel.description}</textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label></label>
                                            <div>
                                                <button type="submit" class="btn btn-primary">
                                                    ${productModel.id != null ? "Chỉnh sửa" : "Thêm"}
                                                </button>
                                            </div>
                                        </div>
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
<%--<script src="<c:url value="/assets/admin/bundles/upload-preview/assets/js/jquery.uploadPreview.min.js"/>"></script>--%>
<!-- Template JS File -->
<script src="<c:url value="/assets/admin/js/scripts.js"/>"></script>
<!-- Custom JS File -->
<script src="<c:url value="/assets/admin/js/custom.js"/>"></script>
<script src="<c:url value="/assets/commons/uploadImage/dist/image-uploader.min.js"/>"></script>
<%--<script src="<c:url value="/assets/admin/bundles/upload-preview/assets/js/jquery.uploadPreview.min.js"/>"></script>--%>

<script>
    function previewFile(input, id) {
        var file = $(input).get(0).files[0];

        if (file) {
            var reader = new FileReader();

            reader.onload = function () {
                $("#previewImg-" + id).attr("src", reader.result);
            }

            reader.readAsDataURL(file);
        }
    }

    $("#rm-btn-1").click(function(e) {
        e.preventDefault();
        $("#thumbnail-1").val("");
        $("#previewImg-1").attr("src", "");
    });
    $("#rm-btn-2").click(function(e) {
        e.preventDefault();
        $("#thumbnail-2").val("");
        $("#previewImg-2").attr("src", "");
    });





    <%--        <c:set var="i" value="0"></c:set>--%>

    let preloaded = [];
    <c:set value="1" var="i"></c:set>
    <c:forEach begin="1" end="${productModel.inforImages.size()}" var="i">
    preloaded[${i-1}] = {
        id: '${i}',
        src: '<c:url value="/get/image?fileName=${productModel.inforImages.get(i-1)}"></c:url>'
    };
    </c:forEach>
    $(function () {
        $('#image-infors').imageUploader({
            imagesInputName: 'infors',
            // preloadedInputName: 'preloaded-thumbnail',
            // maxFiles: none,
            preloaded: preloaded
        });
        $('#test1').imageUploader({
            imagesInputName: 'test1'
        })
        $('#test2').imageUploader({
            imagesInputName: 'test1'
        })
    });
</script>
</body>


<!-- forms-editor.html  21 Nov 2019 03:55:16 GMT -->
</html>
