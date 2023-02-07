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

    <link rel="stylesheet" href="<c:url value="/assets/admin/bundles/summernote/summernote-bs4.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/bundles/codemirror/lib/codemirror.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/bundles/codemirror/theme/duotone-dark.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/bundles/jquery-selectric/selectric.css"/>">
    <!-- Template CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/components.css"/>">
    <!-- Custom style CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/custom.css"/>">
    <link rel='shortcut icon' type='image/x-icon' href='<c:url value="/assets/admin/img/favicon.ico"/>' />
    <script src="<c:url value="/assets/admin/bundles/ckeditor/ckeditor.js"/>"></script>
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
                                    <h4>Advanced Table</h4>
                                    <div class="card-header-form">
                                        <form>
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Search">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-primary"><i class="fas fa-search"></i></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                                <div class="card-body p-0">
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
                                                <th>Task Name</th>
                                                <th>Progress</th>
                                                <th>Members</th>
                                                <th>Due Date</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                            <tr>
                                                <td class="p-0 text-center">
                                                    <div class="custom-checkbox custom-control">
                                                        <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                                                               id="checkbox-1">
                                                        <label for="checkbox-1" class="custom-control-label">&nbsp;</label>
                                                    </div>
                                                </td>
                                                <td>Create a mobile app</td>
                                                <td class="align-middle">
                                                    <div class="progress" data-height="4" data-toggle="tooltip" title="100%">
                                                        <div class="progress-bar bg-success" data-width="100"></div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <img alt="image" src="<c:url value="/assets/admin/img/users/user-5.png"/>" class="rounded-circle" width="35"
                                                         data-toggle="tooltip" title="Wildan Ahdian">
                                                </td>
                                                <td>2018-01-20</td>
                                                <td>
                                                    <div class="badge badge-success">Completed</div>
                                                </td>
                                                <td>
                                                    <div class="dropdown">
                                                        <a href="#" data-toggle="dropdown" class="btn btn-warning dropdown-toggle">Options</a>
                                                        <div class="dropdown-menu">
                                                            <a href="" class="dropdown-item has-icon" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-eye"></i> View</a>
                                                            <a href="#" class="dropdown-item has-icon"><i class="far fa-edit"></i> Edit</a>
                                                            <div class="dropdown-divider"></div>
                                                            <a href="#" class="dropdown-item has-icon text-danger"><i class="far fa-trash-alt"></i>
                                                                Delete</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-0 text-center">
                                                    <div class="custom-checkbox custom-control">
                                                        <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                                                               id="checkbox-2">
                                                        <label for="checkbox-2" class="custom-control-label">&nbsp;</label>
                                                    </div>
                                                </td>
                                                <td>Redesign homepage</td>
                                                <td class="align-middle">
                                                    <div class="progress" data-height="4" data-toggle="tooltip" title="40%">
                                                        <div class="progress-bar" data-width="40"></div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <img alt="image" src="<c:url value="/assets/admin/img/users/user-1.png"/>" class="rounded-circle" width="35"
                                                         data-toggle="tooltip" title="Nur Alpiana">
                                                    <img alt="image" src="<c:url value="/assets/admin/img/users/user-3.png"/>" class="rounded-circle" width="35"
                                                         data-toggle="tooltip" title="Hariono Yusup">
                                                    <img alt="image" src="<c:url value="/assets/admin/img/users/user-4.png"/>" class="rounded-circle" width="35"
                                                         data-toggle="tooltip" title="Bagus Dwi Cahya">
                                                </td>
                                                <td>2018-04-10</td>
                                                <td>
                                                    <div class="badge badge-info">Todo</div>
                                                </td>
                                                <td><a href="#" class="btn btn-primary">Detail</a></td>
                                            </tr>
                                            <tr>
                                                <td class="p-0 text-center">
                                                    <div class="custom-checkbox custom-control">
                                                        <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                                                               id="checkbox-3">
                                                        <label for="checkbox-3" class="custom-control-label">&nbsp;</label>
                                                    </div>
                                                </td>
                                                <td>Backup database</td>
                                                <td class="align-middle">
                                                    <div class="progress" data-height="4" data-toggle="tooltip" title="70%">
                                                        <div class="progress-bar bg-warning" data-width="70"></div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <img alt="image" src="<c:url value="/assets/admin/img/users/user-1.png"/>" class="rounded-circle" width="35"
                                                         data-toggle="tooltip" title="Rizal Fakhri">
                                                    <img alt="image" src="<c:url value="/assets/admin/img/users/user-2.png"/>" class="rounded-circle" width="35"
                                                         data-toggle="tooltip" title="Hasan Basri">
                                                </td>
                                                <td>2018-01-29</td>
                                                <td>
                                                    <div class="badge badge-warning">In Progress</div>
                                                </td>
                                                <td><a href="#" class="btn btn-primary">Detail</a></td>
                                            </tr>
                                            <tr>
                                                <td class="p-0 text-center">
                                                    <div class="custom-checkbox custom-control">
                                                        <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                                                               id="checkbox-4">
                                                        <label for="checkbox-4" class="custom-control-label">&nbsp;</label>
                                                    </div>
                                                </td>
                                                <td>Input data</td>
                                                <td class="align-middle">
                                                    <div class="progress" data-height="4" data-toggle="tooltip" title="100%">
                                                        <div class="progress-bar bg-success" data-width="100"></div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <img alt="image" src="<c:url value="/assets/admin/img/users/user-2.png"/>" class="rounded-circle" width="35"
                                                         data-toggle="tooltip" title="Rizal Fakhri">
                                                    <img alt="image" src="<c:url value="/assets/admin/img/users/user-5.png"/>" class="rounded-circle" width="35"
                                                         data-toggle="tooltip" title="Isnap Kiswandi">
                                                    <img alt="image" src="<c:url value="/assets/admin/img/users/user-4.png"/>" class="rounded-circle" width="35"
                                                         data-toggle="tooltip" title="Yudi Nawawi">
                                                    <img alt="image" src="<c:url value="/assets/admin/img/users/user-1.png"/>" class="rounded-circle" width="35"
                                                         data-toggle="tooltip" title="Khaerul Anwar">
                                                </td>
                                                <td>2018-01-16</td>
                                                <td>
                                                    <div class="badge badge-success">Completed</div>
                                                </td>
                                                <td><a href="#" class="btn btn-primary">Detail</a></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Modal with form -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="formModal"
                 aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="formModal">Thêm danh mục sản phẩm</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="addCategoryForm">
                                <div class="form-group">
                                    <label class="">Tên</label>
                                    <div class="">
                                        <input name="name" type="text" class="form-control">
                                    </div>
                                </div>
<%--                                <div class="form-group">--%>
<%--                                    <label class="">Category</label>--%>
<%--                                    <div class="">--%>
<%--                                        <select class="form-control selectric">--%>
<%--                                            <option>Tech</option>--%>
<%--                                            <option>News</option>--%>
<%--                                            <option>Political</option>--%>
<%--                                        </select>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                                <div class="form-group">
                                    <label class="">Mô tả</label>
                                    <div class="">
                                        <textarea id="description" name="description" class="summernote"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class=""></label>
                                    <div class="">
                                        <input type="button" id="addCategory" class="btn btn-primary">Thêm</input>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="settingSidebar">
                <a href="javascript:void(0)" class="settingPanelToggle"> <i class="fa fa-spin fa-cog"></i>
                </a>
                <div class="settingSidebar-body ps-container ps-theme-default">
                    <div class=" fade show active">
                        <div class="setting-panel-header">Setting Panel
                        </div>
                        <div class="p-15 border-bottom">
                            <h6 class="font-medium m-b-10">Select Layout</h6>
                            <div class="selectgroup layout-color w-50">
                                <label class="selectgroup-item">
                                    <input type="radio" name="value" value="1" class="selectgroup-input-radio select-layout" checked>
                                    <span class="selectgroup-button">Light</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="radio" name="value" value="2" class="selectgroup-input-radio select-layout">
                                    <span class="selectgroup-button">Dark</span>
                                </label>
                            </div>
                        </div>
                        <div class="p-15 border-bottom">
                            <h6 class="font-medium m-b-10">Sidebar Color</h6>
                            <div class="selectgroup selectgroup-pills sidebar-color">
                                <label class="selectgroup-item">
                                    <input type="radio" name="icon-input" value="1" class="selectgroup-input select-sidebar">
                                    <span class="selectgroup-button selectgroup-button-icon" data-toggle="tooltip"
                                          data-original-title="Light Sidebar"><i class="fas fa-sun"></i></span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="radio" name="icon-input" value="2" class="selectgroup-input select-sidebar" checked>
                                    <span class="selectgroup-button selectgroup-button-icon" data-toggle="tooltip"
                                          data-original-title="Dark Sidebar"><i class="fas fa-moon"></i></span>
                                </label>
                            </div>
                        </div>
                        <div class="p-15 border-bottom">
                            <h6 class="font-medium m-b-10">Color Theme</h6>
                            <div class="theme-setting-options">
                                <ul class="choose-theme list-unstyled mb-0">
                                    <li title="white" class="active">
                                        <div class="white"></div>
                                    </li>
                                    <li title="cyan">
                                        <div class="cyan"></div>
                                    </li>
                                    <li title="black">
                                        <div class="black"></div>
                                    </li>
                                    <li title="purple">
                                        <div class="purple"></div>
                                    </li>
                                    <li title="orange">
                                        <div class="orange"></div>
                                    </li>
                                    <li title="green">
                                        <div class="green"></div>
                                    </li>
                                    <li title="red">
                                        <div class="red"></div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="p-15 border-bottom">
                            <div class="theme-setting-options">
                                <label class="m-b-0">
                                    <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input"
                                           id="mini_sidebar_setting">
                                    <span class="custom-switch-indicator"></span>
                                    <span class="control-label p-l-10">Mini Sidebar</span>
                                </label>
                            </div>
                        </div>
                        <div class="p-15 border-bottom">
                            <div class="theme-setting-options">
                                <label class="m-b-0">
                                    <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input"
                                           id="sticky_header_setting">
                                    <span class="custom-switch-indicator"></span>
                                    <span class="control-label p-l-10">Sticky Header</span>
                                </label>
                            </div>
                        </div>
                        <div class="mt-4 mb-4 p-3 align-center rt-sidebar-last-ele">
                            <a href="#" class="btn btn-icon icon-left btn-primary btn-restore-theme">
                                <i class="fas fa-undo"></i> Restore Default
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- General JS Scripts -->
<script src="<c:url value="/assets/admin/js/app.min.js"/>"></script>
<!-- JS Libraies -->
<script src="<c:url value="/assets/admin/bundles/jquery-ui/jquery-ui.min.js"/>"></script>
<script src="<c:url value="/assets/admin/bundles/prism/prism.js"/>"></script>

<script src="<c:url value="/assets/admin/bundles/summernote/summernote-bs4.js"/>"></script>
<script src="<c:url value="/assets/admin/bundles/codemirror/lib/codemirror.js"/>"></script>
<script src="<c:url value="/assets/admin/bundles/codemirror/mode/javascript/javascript.js"/>"></script>
<script src="<c:url value="/assets/admin/bundles/jquery-selectric/jquery.selectric.min.js"/>"></script>
<!-- Page Specific JS File -->
<script src="<c:url value="/assets/admin/js/page/ckeditor.js"/>"></script>
<script src="<c:url value="/assets/admin/js/page/advance-table.js"/>"></script>
<!-- Template JS File -->
<script src="<c:url value="/assets/admin/js/scripts.js"/>"></script>
<!-- Custom JS File -->
<script src="<c:url value="/assets/admin/js/custom.js"/>"></script>
</body>

<script>
    var editor = '';
    $(document).ready(function(){
        editor = CKEDITOR.replace( 'description');
    });

    $('#addCategory').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#addCategoryForm').serializeArray();
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
        data["description"] = editor.getData();
        $.ajax({
            url: '/admin-category',
            type: 'POST',
            data: data,
            success: function (result) {
                <%--window.location.href = "${NewURL}?type=edit&id="+result.id+"&message=insert_success";--%>
            },
            error: function (error) {
                <%--window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";--%>
            }
        });
    });
    function addNew(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${NewURL}?type=edit&id="+result.id+"&message=insert_success";
            },
            error: function (error) {
                window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";
            }
        });
    }
    function updateNew(data) {
        $.ajax({
            url: '/admin-category',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${NewURL}?type=edit&id="+result.id+"&message=update_success";
            },
            error: function (error) {
                window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";
            }
        });
    }
</script>

<!-- advance-table.html  21 Nov 2019 03:55:21 GMT -->
</html>
