<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 2/9/2023
  Time: 4:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">


<!-- advance-table.html  21 Nov 2019 03:55:20 GMT -->
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Otika - Admin Dashboard Template</title>
    <!-- General CSS Files -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/css/bootstrap.min.css"
          integrity="sha512-rt/SrQ4UNIaGfDyEXZtNcyWvQeOq0QLygHluFQcSjaGB04IxWhal71tKuzP6K8eYXYB6vJV4pHkXcmFGGQ1/0w=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/css/iziToast.css"
          integrity="sha512-DIW4FkYTOxjCqRt7oS9BFO+nVOwDL4bzukDyDtMO7crjUZhwpyrWBFroq+IqRe6VnJkTpRAS6nhDvf0w+wHmxg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs4.min.css"
          integrity="sha512-ngQ4IGzHQ3s/Hh8kMyG4FC74wzitukRMIcTOoKT3EyzFZCILOPF0twiXOQn75eDINUfKBYmzYn2AA8DkAk8veQ=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
            integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <!-- Library Js Files -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
            integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/js/iziToast.min.js"
            integrity="sha512-Zq9o+E00xhhR/7vJ49mxFNJ0KQw1E1TMWkPTxrWcnpfEFDEXgUiwJHIKit93EW/XxE31HSI5GEOW06G6BF1AtA=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- Template CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/components.css"/>">
    <!-- Custom style CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/custom.css"/>">
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
                                    <h4>${cateModel.id == null ? "Thêm sản phẩm mới" : "Chỉnh sửa sản phẩm"}</h4>
                                </div>
                                <div class="card-body">
                                    <form id="categoryForm">
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
                                                <textarea id="description" name="description"
                                                          class="summernote-simple">${cateModel.description}</textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label></label>
                                            <div>
                                                <button id="btnSubmit" type="submit" class="btn btn-primary">
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
<%--<c:set var="pageble" value="page=${}"--%>
<c:url var="urlTable" value="/admin/category/table"/>
<c:url var="urlAdd" value="/admin/category/add"/>
<c:url var="urlEdit" value="/admin/category/edit"/>
<script>
    var idProduct = $('#id').val();
    // $(document).ready(function () {
    $("#btnSubmit").click(function (event) {
        event.preventDefault();
        var data = {};
        var formData = $('#categoryForm').serializeArray();
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
        if (idProduct == "") {
            addProduct(data);
        } else {
            updateProduct(data);
        }
    });

    function addProduct(data) {
        $.ajax({
            type: "POST",
            url: "${urlAdd}",
            data: data,
            success: function (data) {
                if (data == 'thành công') {
                    iziToast.success({
                        title: 'Thông báo!',
                        message: 'Thêm thành công',
                        position: 'topRight'
                    });
                    $("#categoryForm")[0].reset();
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

    function updateProduct(data) {
        $.ajax({
            type: "POST",
            url: "${urlEdit}",
            data: data,
            success: function (data) {
                if (data == 'thành công') {
                    iziToast.success({
                        title: 'Thông báo!',
                        message: 'Cập nhật thành công',
                        position: 'topRight'
                    });
                    window.setTimeout(function(){
                        window.open('${urlTable}');
                    }, 3000);
                    // $("#productForm")[0].reset();
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
<!-- General JS Scripts -->
<script src="<c:url value="/assets/admin/js/app.min.js"/>"></script>
<!-- JS Libraies -->
<script src="<c:url value="/assets/admin/bundles/jquery-ui/jquery-ui.min.js"/>"></script>
<script src="<c:url value="/assets/admin/bundles/prism/prism.js"/>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"
        integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs4.min.js"
        integrity="sha512-ZESy0bnJYbtgTNGlAD+C2hIZCt4jKGF41T5jZnIXy4oP8CQqcrBGWyxNP16z70z/5Xy6TS/nUZ026WmvOcjNIQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/lang/summernote-vi-VN.min.js"
        integrity="sha512-ir/93ZWu1Y1LmyYrG6gIOcXCvGC/PehZtJcd6j1QoDF8EooxiYbRHKDVC/V4Kz6qPwI4HrOpvLCdpfpTedyYgw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- Page Specific JS File -->
<script src="<c:url value="/assets/admin/js/page/advance-table.js"/>"></script>
<!-- Template JS File -->
<script src="<c:url value="/assets/admin/js/scripts.js"/>"></script>

<!-- Custom JS File -->
<script src="<c:url value="/assets/admin/js/custom.js"/>"></script>
</body>


<!-- advance-table.html  21 Nov 2019 03:55:21 GMT -->
</html>
