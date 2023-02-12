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
    <title>Admin - Danh mục Sản phẩm</title>
    <!-- General CSS Files -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/app.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/bundles/prism/prism.css"/>">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/components.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/bundles/izitoast/css/iziToast.min.css"/>">
    <script src="<c:url value="/assets/admin/bundles/izitoast/js/iziToast.min.js"/>"></script>
    <script src="<c:url value="/assets/admin/bundles/sweetalert/sweetalert.min.js"/>"></script>
    <!-- Template CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/components.css"/>">
    <!-- Custom style CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/custom.css"/>">
    <link rel='shortcut icon' type='image/x-icon' href='<c:url value="/assets/admin/img/favicon.ico"/>' />
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
<%--                    advan--%>
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Bảng danh danh mục</h4>
                                </div>
                                <div class="card-body">
                                    <div class="float-left">
                                        <select class="form-control selectric">
                                            <option>Action For Selected</option>
                                            <option>Move to Draft</option>
                                            <option>Move to Pending</option>
                                            <option>Delete Permanently</option>
                                        </select>
                                    </div>
                                    <div class="float-left p-l-10">
                                    <a class="btn btn-success btn-action mr-1 form-control" href="<c:url value="/admin/category/add"/>" data-toggle="tooltip" title="Thêm"><i class="fas fa-plus"></i></a>
                                    </div>

                                    <div class="float-left p-l-10">
                                    <a class="btn btn-danger btn-action mr-1 form-control float-left" data-toggle="tooltip" title="Xóa"><i class="fas fa-trash"></i></a>
                                    </div>
                                    <div class="float-right">
                                        <form>
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Search">
                                                <div class="input-group-append">
                                                    <button class="btn btn-primary"><i class="fas fa-search"></i></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="table-responsive">
                                        <table class="table table-striped">
                                            <tr>
                                                <th class="text-center">
                                                    <div class="custom-checkbox custom-checkbox-table custom-control">
                                                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad"
                                                               class="custom-control-input" id="checkbox-all">
                                                        <label for="checkbox-all" class="custom-control-label">&nbsp;</label>
                                                    </div>
                                                </th>
                                                <th>Id</th>
                                                <th>Tên</th>
                                                <th>Ngày tạo</th>
                                                <th>Nguười tạo</th>
                                                <th>Trạng thái</th>
                                                <th>Hành Dộng</th>
                                            </tr>
                                            <c:forEach items="${cateList}" var="item" >
                                            <tr>
                                                <td class="p-0 text-center">
                                                    <div class="custom-checkbox custom-control">
                                                        <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                                                               id="checkbox-${item.id}" value="${item.id}"/>
                                                        <label for="checkbox-${item.id}" class="custom-control-label">&nbsp;</label>
                                                    </div>
                                                </td>
                                                <td>${item.id}</td>
                                                <td>${item.name}</td>
<%--                                                <td>${item.description}</td>--%>
                                                <td>${item.createdDate}</td>
                                                <td>${item.createdBy}</td>
                                                <td>
                                                    <c:if test="${item.status == 1}">
                                                    <a href="#" class="badge badge-success">Hiển thị</a>
                                                    </c:if>
                                                    <c:if test="${item.status == 0}">
                                                        <a href="#" class="badge badge-light">Ẩn</a>
                                                    </c:if>
                                                </td>
                                                <td>

                                                    <div class="dropdown">
                                                        <a href="#" data-toggle="dropdown" class="btn btn-warning dropdown-toggle">Hành Động</a>
                                                        <div class="dropdown-menu">
                                                            <a href="<c:url value="/admin/category/edit?id=${item.id}"/>" class="dropdown-item has-icon"><i class="far fa-edit"></i> Chỉnh sửa</a>
                                                            <div class="dropdown-divider"></div>
                                                            <a href="#" onclick="deleteCate('${item.id}')" class="dropdown-item has-icon text-danger"><i class="far fa-trash-alt"></i>
                                                                Xóa</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                        </table>
                                    </div>
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
<script>
    <c:if test="${not empty message}">
    swal('${message}!', {
        icon: 'success',
    });
    </c:if>
    function deleteCate(id) {
        swal({
            title: 'Bạn chắc chắn muốn xóa?',
            text: 'Một khi đã xóa không thể hoàn tác!',
            icon: 'warning',
            buttons: true,
            dangerMode: true,
        })
            .then((willDelete) => {
                if (willDelete) {
                    window.location.href = "<c:url value="/admin/category/delete"/>?id=" +id;
                } else {
                    swal('Hủy thao tác thành công!');
                }
            });
    }
</script>

<!-- General JS Scripts -->
<script src="<c:url value="/assets/admin/js/app.min.js"/>"></script>
<!-- JS Libraies -->
<script src="<c:url value="/assets/admin/bundles/jquery-ui/jquery-ui.min.js"/>"></script>
<script src="<c:url value="/assets/admin/bundles/prism/prism.js"/>"></script>
<!-- Page Specific JS File -->
<script src="<c:url value="/assets/admin/js/page/advance-table.js"/>"></script>
<!-- Template JS File -->
<script src="<c:url value="/assets/admin/js/scripts.js"/>"></script>

<!-- Custom JS File -->
<script src="<c:url value="/assets/admin/js/custom.js"/>"></script>


</body>


<!-- advance-table.html  21 Nov 2019 03:55:21 GMT -->
</html>
