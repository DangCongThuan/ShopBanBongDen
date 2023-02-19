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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/css/bootstrap.min.css"
          integrity="sha512-rt/SrQ4UNIaGfDyEXZtNcyWvQeOq0QLygHluFQcSjaGB04IxWhal71tKuzP6K8eYXYB6vJV4pHkXcmFGGQ1/0w=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs4.min.css"
          integrity="sha512-ngQ4IGzHQ3s/Hh8kMyG4FC74wzitukRMIcTOoKT3EyzFZCILOPF0twiXOQn75eDINUfKBYmzYn2AA8DkAk8veQ=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="<c:url value="/assets/admin/bundles/jquery-selectric/selectric.css"/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/css/iziToast.css"
          integrity="sha512-DIW4FkYTOxjCqRt7oS9BFO+nVOwDL4bzukDyDtMO7crjUZhwpyrWBFroq+IqRe6VnJkTpRAS6nhDvf0w+wHmxg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <!-- Library Js Files -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
            integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/js/iziToast.min.js"
            integrity="sha512-Zq9o+E00xhhR/7vJ49mxFNJ0KQw1E1TMWkPTxrWcnpfEFDEXgUiwJHIKit93EW/XxE31HSI5GEOW06G6BF1AtA=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link href="<c:url value="/assets/commons/uploadImage/dist/image-uploader.min.css"/>" rel="stylesheet">
    <!-- Template CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/components.css"/>">
    <!-- Custom style CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/custom.css"/>">
    <style>
        #drop-zone {
            max-width: 450px;
            height: 430px;
            border: 2px dotted blue;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #drop-zone img {
            object-fit: cover;
            width: 100%;
            height: 100%;
            display: none;
        }

    </style>
</head>

<body>
<div class="loader"></div>
<div id="app">
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
                                <span id="result"></span>
                                <div class="card-body">
                                    <form id="productForm" enctype="multipart/form-data" accept-charset="UTF-8"
                                          method="post">
                                        <div class="row">
                                            <div class="col-12 col-md-4 col-lg-4">
                                                <div class="form-group">
                                                    <label>Ảnh bìa</label>
                                                    <div id="drop-zone">
                                                        <img style="${productModel.thumbnail != null ? "display: block" : ""}" id="thumbnail-img" src="<c:url value="/get/image?fileName=${productModel.thumbnail}"/>" alt="">
                                                        <p style="${productModel.thumbnail != null ? "display: none" : ""}" id="label-thumbnail">Thả tệp hoặc nhấp để tải lên</p>
                                                        <input type="file" id="thumbnail" name="thumbnail" required hidden>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-4 col-lg-4">
                                                <c:if test="${not empty productModel.id}">
                                                    <div class="form-group">
                                                        <label>Id</label>
                                                        <div>
                                                            <input disabled type="text" value="${productModel.id}"
                                                                   class="form-control">
                                                        </div>
                                                    </div>
                                                </c:if>
                                                <div class="form-group">
                                                    <label>Tên</label>
                                                    <div>
                                                        <input id="name" name="name" type="text"
                                                               value="${productModel.name}"
                                                               class="form-control" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Giá cũ</label>
                                                    <div>
                                                        <input id="oldPrice" name="oldPrice" type="number"
                                                               value="${productModel.oldPrice}"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Giá bán</label>
                                                    <div>
                                                        <input id="price" name="price" type="number"
                                                               value="${productModel.price}"
                                                               class="form-control" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
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
                                                <div class="form-group">
                                                    <label>Trạng thái</label>
                                                    <div>
                                                        <select id="status" name="status"
                                                                class="form-control selectric">
                                                            <option ${productModel.status == 1 ? "selected" : ""}
                                                                    value="1">
                                                                Hiển
                                                                thị
                                                            </option>
                                                            <option ${productModel.status == 0 ? "selected" : ""}
                                                                    value="0">
                                                                Ẩn
                                                            </option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-4 col-lg-4">
                                                    <div class="form-group">
                                                        <label>Kích thước</label>
                                                        <div>
                                                            <input id="size" name="size" type="text" value="${productModel.size}"
                                                                   class="form-control">
                                                        </div>
                                                    </div>
                                                <div class="form-group">
                                                    <label>Công suất</label>
                                                    <div>
                                                        <input id="wattage" name="wattage" type="text"
                                                               value="${productModel.wattage}"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Quang Thông</label>
                                                    <div>
                                                        <input id="lumen" name="lumen" type="text"
                                                               value="${productModel.lumen}"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Điện áp</label>
                                                    <div>
                                                        <input id="voltage" name="voltage" type="text"
                                                               value="${productModel.voltage}"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Màu</label>
                                                    <div>
                                                        <input id="color" name="color" type="text"
                                                               value="${productModel.color}"
                                                               class="form-control">
                                                    </div>
                                                </div>
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
                                                <button type="submit" href="#" id="btnSubmit" class="btn btn-primary">
                                                    ${productModel.id != null ? "Chỉnh sửa" : "Thêm"}
                                                </button>
                                            </div>
                                        </div>
                                        <input type="hidden" value="${productModel.id}" id="id" name="id"/>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs4.min.js"
        integrity="sha512-ZESy0bnJYbtgTNGlAD+C2hIZCt4jKGF41T5jZnIXy4oP8CQqcrBGWyxNP16z70z/5Xy6TS/nUZ026WmvOcjNIQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/lang/summernote-vi-VN.min.js"
        integrity="sha512-ir/93ZWu1Y1LmyYrG6gIOcXCvGC/PehZtJcd6j1QoDF8EooxiYbRHKDVC/V4Kz6qPwI4HrOpvLCdpfpTedyYgw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="<c:url value="/assets/admin/bundles/jquery-selectric/jquery.selectric.min.js"/>"></script>
<!-- Template JS File -->
<script src="<c:url value="/assets/admin/js/scripts.js"/>"></script>
<!-- Custom JS File -->
<script src="<c:url value="/assets/admin/js/custom.js"/>"></script>
<script src="<c:url value="/assets/commons/uploadImage/dist/image-uploader.min.js"/>"></script>

<script>
    const dropZone = document.querySelector('#drop-zone');
    const inputElement = document.querySelector('#thumbnail');
    const img = document.querySelector('#thumbnail-img');
    let p = document.querySelector('#label-thumbnail')

    inputElement.addEventListener('change', function (e) {
        const clickFile = this.files[0];
        if (clickFile) {
            img.style = "display:block;";
            p.style = 'display: none';
            const reader = new FileReader();
            reader.readAsDataURL(clickFile);
            reader.onloadend = function () {
                const result = reader.result;
                let src = this.result;
                img.src = src;
                img.alt = clickFile.name
            }
        }
    })
    dropZone.addEventListener('click', () => inputElement.click());
    dropZone.addEventListener('dragover', (e) => {
        e.preventDefault();
    });
    dropZone.addEventListener('drop', (e) => {
        e.preventDefault();
        img.style = "display:block;";
        let file = e.dataTransfer.files[0];

        const reader = new FileReader();
        reader.readAsDataURL(file);
        reader.onloadend = function () {
            e.preventDefault()
            p.style = 'display: none';
            let src = this.result;
            img.src = src;
            img.alt = file.name
        }
    });
</script>
<script>
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
            preloaded: preloaded
        });
    });
</script>
<c:url var="urlTable" value="/admin/product/table"/>
<c:url var="urlAdd" value="/admin/product/add"/>
<c:url var="urlEdit" value="/admin/product/edit"/>
<script>
    var idProduct = $('#id').val();
    // $(document).ready(function () {
    $("#btnSubmit").click(function (event) {
        event.preventDefault();
        var form = $('#productForm')[0];
        var data = new FormData(form);
        $("#btnSubmit").prop("disabled", true);
        if (idProduct == "") {
            addProduct(data);
        } else {
            updateProduct(data);
        }
    });

    function addProduct(data) {
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "${urlAdd}",
            data: data,
            processData: false,
            contentType: false,
            success: function (data) {
                if (data == 'add-product-success') {
                    iziToast.success({
                        title: 'Thông báo!',
                        message: data,
                        position: 'topRight'
                    });
                    $("#productForm")[0].reset();
                    // $("#result").text(data);
                } else {
                    iziToast.error({
                        title: 'Thông báo!',
                        message: data,
                        position: 'topRight'
                    });
                }
                $("#btnSubmit").prop("disabled", false);
            },
            error: function (e) {

                $("#result").text(e.responseText);
                console.log("ERROR : ", e);
                // $("#btnSubmit").prop("disabled", false);

            }
        });
    }

    function updateProduct(data) {
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "${urlEdit}",
            data: data,
            processData: false,
            contentType: false,
            success: function (data) {
                if (data == 'thành công') {
                    iziToast.success({
                        title: 'Thông báo!',
                        message: 'Cập nhật sản phẩm thành công',
                        position: 'topRight'
                    });
                    $("#productForm")[0].reset();
                    window.setTimeout(function(){
                        window.open('${urlTable}');
                    }, 3000);
                    // $("#result").text(data);
                } else {
                    iziToast.error({
                        title: 'Thông báo!',
                        message: data,
                        position: 'topRight'
                    });
                }
                $("#btnSubmit").prop("disabled", false);
            },
            error: function (data) {
                iziToast.error({
                    title: 'Thông báo!',
                    message: data,
                    position: 'topRight'
                });
                $("#btnSubmit").prop("disabled", false);

            }
        });
    }

    // });
</script>
</body>
</html>
