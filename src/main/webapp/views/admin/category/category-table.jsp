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
    <script src="<c:url value="/assets/admin/bundles/sweetalert/sweetalert.min.js"/>"></script>
    <!-- Template CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.13.2/datatables.min.css"/>
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/components.css"/>">
    <!-- Custom style CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/custom.css"/>">
</head>

<body>
<div class="loader"></div>
<div id="app">
    <div class="main-wrapper main-wrapper-1">
        <%@include file="/pages/admin/header.jsp"%>
        <%@include file="/pages/admin/main-side-bar.jsp"%>
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
                                    <div class="table-responsive">
                                        <table id="categoryTable" class="table table-striped">
                                            <thead>

                                            <tr>
                                                <th>Id</th>
                                                <th>Tên</th>
                                                <th>Ngày tạo</th>
                                                <th>Người tạo</th>
                                                <th>Ngày chỉnh sửa</th>
                                                <th>Nguười chỉnh sửa</th>
                                                <th>Trạng thái</th>
                                                <th>Hành Dộng</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${cateList}" var="item">
                                                <tr>
                                                    <td>${item.id}</td>
                                                    <td>${item.name}</td>
                                                    <td>${item.createdDate}</td>
                                                    <td>${item.createdBy}</td>
                                                    <td>${item.modifiedDate}</td>
                                                    <td>${item.modifiedBy}</td>
                                                    <td>
                                                        <c:if test="${item.status == 1}">
                                                            <a href="#" class="badge badge-success">Hiển thị</a>
                                                        </c:if>
                                                        <c:if test="${item.status == 0}">
                                                            <a href="#" class="badge badge-light">Ẩn</a>
                                                        </c:if>
                                                    </td>
                                                    <td>
                                                        <a class="btn btn-success btn-action"
                                                           href="<c:url value="/admin/category/edit?id=${item.id}"/>"
                                                           data-toggle="tooltip" title="Chỉnh sửa"><i
                                                                class="far fa-edit"></i></a>
                                                        <a class="btn btn-danger btn-action"
                                                           onclick="deleteCate(this, '${item.id}')" data-toggle="tooltip"
                                                           title="Xóa"><i class="fas fa-trash"></i></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
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
<!-- General JS Scripts -->
<script src="<c:url value="/assets/admin/js/app.min.js"/>"></script>
<!-- JS Libraies -->
<script src="<c:url value="/assets/admin/bundles/jquery-ui/jquery-ui.min.js"/>"></script>
<script src="<c:url value="/assets/admin/bundles/prism/prism.js"/>"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.13.2/datatables.min.js"></script>
<!-- Page Specific JS File -->
<script src="<c:url value="/assets/admin/js/page/advance-table.js"/>"></script>
<!-- Template JS File -->
<script src="<c:url value="/assets/admin/js/scripts.js"/>"></script>

<!-- Custom JS File -->
<script src="<c:url value="/assets/admin/js/custom.js"/>"></script>
<c:url var="urlDeleteCate" value="/admin/category/delete"/>
<script>
    var cateTable = $('#categoryTable').DataTable({
        "language": {
            "emptyTable": "Không có bản ghi",
            "info": "Hiển thị _START_ đến _END_ từ tất cả _TOTAL_ dòng",
            "infoEmpty": "Hiển thị 0 đến 0 từ 0 dòng",
            "infoFiltered": "(lọc từ tổng _MAX_ dòng)",
            "infoPostFix": "",
            "thousands": ",",
            "lengthMenu": "Hiển thị _MENU_ dòng",
            "loadingRecords": "Đang tải...",
            "processing": "",
            "search": "Tìm kiếm:",
            "zeroRecords": "Không có bản ghi",
            "paginate": {
                "first": "Đầu",
                "last": "Cuối",
                "next": "Tiếp",
                "previous": "Trước"
            },
            "aria": {
                "sortAscending": ": nhấn để lọc cột tăng dần ",
                "sortDescending": ": nhấn để lọc cột giảm dần"
            }
        }
    });

    function deleteCate(a, id) {
        swal({
            title: 'Bạn chắc chắn muốn xóa?',
            text: 'Một khi đã xóa không thể hoàn tác!',
            icon: 'warning',
            buttons: true,
            dangerMode: true,
        })
            .then((willDelete) => {
                if (willDelete) {
                    $.ajax({
                        type: "POST",
                        url: "${urlDeleteCate}",
                        data: {'id' : id},
                        success: function (data) {
                            if (data == 'success') {
                                swal('Xóa thành công!', {
                                    icon: 'success',
                                });
                                cateTable.row( $(a).parents('tr') ).remove().draw();
                            } else {
                                swal('Xóa thất bại!', {
                                    icon: 'error',
                                });
                            }
                        },
                        error: function (e) {
                            swal('Xóa thất bại!', {
                                icon: 'error',
                            });
                        }
                    });
                } else {
                    swal('Hủy thao tác thành công!');
                }
            });
    }
</script>
</body>


<!-- advance-table.html  21 Nov 2019 03:55:21 GMT -->
</html>
