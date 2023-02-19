<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 2/9/2023
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="main-sidebar sidebar-style-2">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="index.html"> <img alt="image" src=" <c:url value="/assets/commons/imgs/logo.png"/>" class="header-logo" /> <span
                    class="logo-name">Galio</span>
            </a>
        </div>
        <ul class="sidebar-menu">
            <li class="menu-header">Chính</li>
            <li class="dropdown active">
                <a href="index.html" class="nav-link"><i data-feather="monitor"></i><span>Lược đồ</span></a>
            </li>
            <li class="menu-header">Quản lý</li>
            <li class="dropdown">
                <a href="#" class="menu-toggle nav-link has-dropdown"><i class="fa-solid fa-user"></i><span>Người dùng</span></a>
                <ul class="dropdown-menu">
                    <li><a class="nav-link" href="card.html">Bảng người dùng</a></li>
                    <li><a class="nav-link" href="modal.html">Bảng dữ liệu</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="menu-toggle nav-link has-dropdown"><i data-feather="copy"></i><span>Danh mục</span></a>
                <ul class="dropdown-menu">
                    <li><a class="nav-link" href="<c:url value="/admin/category/add"/>">Thêm danh mục</a></li>
                    <li><a class="nav-link" href="<c:url value="/admin/category/table"/>">Bảng danh mục</a></li>
                    <li><a class="nav-link" href="breadcrumb.html">Bảng dữ liệu</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="menu-toggle nav-link has-dropdown"><i
                        data-feather="shopping-bag"></i><span>Sản phẩm</span></a>
                <ul class="dropdown-menu">
                    <li><a class="nav-link" href="<c:url value="/admin/product/add"/>">Thêm sản phẩm</a></li>
                    <li><a class="nav-link" href="<c:url value="/admin/product/table"/>">Bảng sản phẩm</a></li>
                    <li><a class="nav-link" href="modal.html">Bảng dữ liệu</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="menu-toggle nav-link has-dropdown"><i data-feather="layout"></i><span>Hóa đơn</span></a>
                <ul class="dropdown-menu">
                    <li><a class="nav-link" href="basic-form.html">Bảng</a></li>
                    <li><a class="nav-link" href="forms-advanced-form.html">Bảng dữ liệu</a></li>
                </ul>
            </li>
        </ul>
    </aside>
</div>