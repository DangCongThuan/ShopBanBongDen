<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 2/8/2023
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js" lang="en">


<head>
    <jsp:include page="/pages/web/links.jsp"/>
    <!-- Site title -->
    <title>Galio - Đăng ký</title>
    <!-- Favicon -->
</head>

<body>
<div class="wrapper box-layout">

    <!-- header area start -->
    <jsp:include page="/pages/web/header.jsp"/>
    <!-- header area end -->

    <!-- breadcrumb area start -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Đăng ký</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- login register wrapper start -->
    <div class="login-register-wrapper">
        <div class="container">
            <div class="member-area-from-wrap">
                <div class="row justify-content-center">
                    <!-- Register Content Start -->
                    <div class="col-lg-6">
                        <div class="login-reg-form-wrap mt-md-34 mt-sm-34">
                            <h2>Đăng ký</h2>
                            <form action="#" method="post">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="single-input-item">
                                            <input type="text" placeholder="Họ" required />
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="single-input-item">
                                            <input type="text" placeholder="Tên" required />
                                        </div>
                                    </div>
                                </div>
                                <div class="single-input-item">
                                    <input type="email" placeholder="Email" required />
                                </div>
                                <div class="single-input-item">
                                    <input type="password" placeholder="Mật khẩu" required />
                                </div>
                                <div class="single-input-item">
                                    <input type="password" placeholder="Nhập lại mật khẩu" required />
                                </div>
                                <div class="single-input-item">
                                    <div class="login-reg-form-meta">
                                        <div class="remember-meta">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="subnewsletter">
                                                <label class="custom-control-label" for="subnewsletter">Đăng ký nhận thông tin</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-input-item">
                                    <button class="sqr-btn">Đăng ký</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- Register Content End -->
                </div>
            </div>
        </div>
    </div>
    <!-- login register wrapper end -->

    <!-- footer area start -->
    <jsp:include page="/pages/web/footer.jsp"/>
    <!-- footer area end -->
</div>

<jsp:include page="/pages/web/scripts.jsp"/>
</body>


</html>