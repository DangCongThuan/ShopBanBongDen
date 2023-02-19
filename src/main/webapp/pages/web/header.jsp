<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 2/7/2023
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- header area start -->
<header>
    <!-- header top start -->
    <div class="header-top-area bg-gray text-center text-md-left">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-5">
                    <div class="header-call-action">
                        <a href="#">
                            <i class="fa fa-envelope"></i>
                            info@website.com
                        </a>
                        <a href="#">
                            <i class="fa fa-phone"></i>
                            0123456789
                        </a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-7">
                    <div class="header-top-right float-md-right float-none">
                        <nav>
                            <ul>
                                <li>
                                    <div class="dropdown header-top-dropdown">
                                        <a
                                                class="dropdown-toggle"
                                                id="myaccount"
                                                data-toggle="dropdown"
                                                aria-haspopup="true"
                                                aria-expanded="false"
                                        >
                                            Tài khoản của tôi
                                            <i class="fa fa-angle-down"></i>
                                        </a>
                                        <div
                                                class="dropdown-menu"
                                                aria-labelledby="myaccount"
                                        >
                                            <a class="dropdown-item" href="my-account.html"
                                            >Tài khoản</a
                                            >
                                            <a class="dropdown-item" href="login-register.html">
                                                Đăng nhập</a
                                            >
                                            <a class="dropdown-item" href="login-register.html"
                                            >Đăng ký</a
                                            >
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">Yêu thích</a>
                                </li>
                                <li>
                                    <a href="#">Giỏ hàng</a>
                                </li>
                                <li>
                                    <a href="#">Thanh toán</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header top end -->

    <!-- header middle start -->
    <div class="header-middle-area pt-20 pb-20">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3">
                    <div class="brand-logo">
                        <a href="index.html">
                            <img src=" <c:url value="/assets/commons/imgs/logo.png"/>" alt="brand logo" />
                        </a>
                    </div>
                </div>
                <!-- end logo area -->
                <div class="col-lg-9">
                    <div class="header-middle-right">
                        <div class="header-middle-block">
                            <div class="header-middle-searchbox">
                                <input type="text" placeholder="Search..." />
                                <button class="search-btn">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                                <div class="header-mini-cart">
                                    <div class="mini-cart-btn">
                                        <i class="fa fa-shopping-cart"></i>
                                        <span class="cart-notification">0</span>
                                    </div>
                                    <div class="mini-cart-btn">
                                        <i class="fa-regular fa-heart"></i>
                                        <span class="cart-notification">0</span>
                                    </div>
                                    <div class="mini-cart-btn">
                                        <i class="fa-solid fa-code-compare"></i>
                                        <span class="cart-notification">0</span>
                                    </div>
                                </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header middle end -->

    <!-- main menu area start -->
    <div class="main-header-wrapper bdr-bottom1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="main-header-inner">
                        <div class="category-toggle-wrap">
                            <div class="category-toggle">
                                Danh mục
                                <div class="cat-icon">
                                    <i class="fa fa-angle-down"></i>
                                </div>
                            </div>
                            <nav class="category-menu category-style-2">
                                <ul>
                                    <li>
                                        <a href="shop-grid-left-sidebar.html"
                                        ><i class="fa fa-desktop"></i> computer</a
                                        >
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="shop-grid-left-sidebar.html"
                                        ><i class="fa fa-camera"></i> camera</a
                                        >
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="shop-grid-left-sidebar.html"
                                        ><i class="fa fa-book"></i> smart phones</a
                                        >
                                    </li>
                                    <li>
                                        <a href="shop-grid-left-sidebar.html"
                                        ><i class="fa-solid fa-clock"></i> watch</a
                                        >
                                    </li>
                                    <li>
                                        <a href="shop-grid-left-sidebar.html"
                                        ><i class="fa fa-television"></i> electronic</a
                                        >
                                    </li>
                                    <li>
                                        <a href="shop-grid-left-sidebar.html"
                                        ><i class="fa fa-tablet"></i> tablet</a
                                        >
                                    </li>
                                    <li>
                                        <a href="shop-grid-left-sidebar.html"
                                        ><i class="fa fa-book"></i> books</a
                                        >
                                    </li>
                                    <li>
                                        <a href="shop-grid-left-sidebar.html"
                                        ><i class="fa fa-microchip"></i> microchip</a
                                        >
                                    </li>
                                    <li>
                                        <a href="shop-grid-left-sidebar.html"
                                        ><i class="fa fa-bullhorn"></i> bullhorn</a
                                        >
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div class="main-menu">
                            <nav id="mobile-menu">
                                <ul>
                                    <li class="active">
                                        <a href="#"><i class="fa fa-home"></i>Trang chủ</a>
                                    </li>
                                    <li>
                                        <a href="#">Shop</a>
                                    </li>
                                    <li>
                                        <a href="#">Tin Tức</a>
                                    </li>
                                    <li><a href="contact-us.html">Liên hệ</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="col-12 d-block d-lg-none">
                    <div class="mobile-menu"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- main menu area end -->
</header>
<!-- header area end -->