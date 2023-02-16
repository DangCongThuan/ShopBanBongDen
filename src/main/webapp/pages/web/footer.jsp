<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 2/7/2023
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- brand area start -->
<div class="brand-area pt-28 pb-30">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title mb-30">
                    <div class="title-icon">
                        <i class="fa fa-crop"></i>
                    </div>
                    <h3>Các hãng nổi tiếng</h3>
                </div>
                <!-- section title end -->
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="brand-active slick-padding slick-arrow-style">
                    <div class="brand-item text-center">
                        <a href="#"><img src="<c:url value="/assets/web/img/brand/br1.png"/>" alt=""/></a>
                    </div>
                    <div class="brand-item text-center">
                        <a href="#"><img src="<c:url value="/assets/web/img/brand/br2.png"/>" alt=""/></a>
                    </div>
                    <div class="brand-item text-center">
                        <a href="#"><img src="<c:url value="/assets/web/img/brand/br3.png"/>" alt=""/></a>
                    </div>
                    <div class="brand-item text-center">
                        <a href="#"><img src="<c:url value="/assets/web/img/brand/br4.png"/>" alt=""/></a>
                    </div>
                    <div class="brand-item text-center">
                        <a href="#"><img src="<c:url value="/assets/web/img/brand/br5.png"/>" alt=""/></a>
                    </div>
                    <div class="brand-item text-center">
                        <a href="#"><img src="<c:url value="/assets/web/img/brand/br6.png"/>" alt=""/></a>
                    </div>
                    <div class="brand-item text-center">
                        <a href="#"><img src="<c:url value="/assets/web/img/brand/br5.png"/>" alt=""/></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- brand area end -->
<!-- footer area start -->
<footer>
    <!-- footer top start -->
    <div class="footer-top bg-black pt-14 pb-14">
        <div class="container">
            <div class="footer-top-wrapper">
                <div class="newsletter__wrap">
                    <div class="newsletter__title">
                        <div class="newsletter__icon">
                            <i class="fa fa-envelope"></i>
                        </div>
                        <div class="newsletter__content">
                            <h3>Đăng ký nhận tin tức</h3>
                            <p>Chúng tôi sẽ gửi các thông tin, khuyến mãi qua email</p>
                        </div>
                    </div>
                    <div class="newsletter__box">
                        <form id="mc-form">
                            <input
                                    type="email"
                                    id="mc-email"
                                    autocomplete="off"
                                    placeholder="Email"
                            />
                            <button id="mc-submit">Đăng ký!</button>
                        </form>
                    </div>
                    <!-- mailchimp-alerts Start -->
                    <div class="mailchimp-alerts">
                        <div class="mailchimp-submitting"></div>
                        <!-- mailchimp-submitting end -->
                        <div class="mailchimp-success"></div>
                        <!-- mailchimp-success end -->
                        <div class="mailchimp-error"></div>
                        <!-- mailchimp-error end -->
                    </div>
                    <!-- mailchimp-alerts end -->
                </div>
                <div class="social-icons">
                    <a
                            href="#"
                            data-toggle="tooltip"
                            data-placement="top"
                            title="Facebook"
                    >
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>
                    <a
                            href="#"
                            data-toggle="tooltip"
                            data-placement="top"
                            title="Twitter"
                    >
                        <i class="fa-brands fa-twitter"></i>
                    </a>
                    <a
                            href="#"
                            data-toggle="tooltip"
                            data-placement="top"
                            title="Instagram"
                    ><i class="fa-brands fa-instagram"></i
                    ></a>
                    <a
                            href="#"
                            data-toggle="tooltip"
                            data-placement="top"
                            title="Google-plus"
                    ><i class="fa-brands fa-google-plus"></i
                    ></a>
                    <a
                            href="#"
                            data-toggle="tooltip"
                            data-placement="top"
                            title="Youtube"
                    ><i class="fa-brands fa-youtube"></i
                    ></a>
                </div>
            </div>
        </div>
    </div>
    <!-- footer top end -->

    <!-- footer main start -->
    <div class="footer-widget-area pt-40 pb-38 pb-sm-10">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="footer-widget mb-sm-30">
                        <div class="widget-title mb-10 mb-sm-6">
                            <h4>Liên hệ với chúng tôi</h4>
                        </div>
                        <div class="widget-body">
                            <ul class="location">
                                <li><i class="fa fa-envelope"></i>support@galio.com</li>
                                <li><i class="fa fa-phone"></i>(800) 0123 456 789</li>
                                <li>
                                    <i class="fa fa-map-marker"></i>Địa chỉ: 1234 - Đại học Nông Lâm TP.HCM,
                                    TP.Thủ đuc
                                </li>
                            </ul>
                            <a class="map-btn" href="contact-us.html"
                            >Mở trong Google Map</a
                            >
                        </div>
                    </div>
                    <!-- single widget end -->
                </div>
                <!-- single widget column end -->
                <div class="col-md-4 col-sm-6">
                    <div class="footer-widget mb-sm-30">
                        <div class="widget-title mb-10 mb-sm-6">
                            <h4>Dịch vụ khách hàng</h4>
                        </div>
                        <div class="widget-body">
                            <ul>
                                <li><a href="#">Chính sách bảo mật thông tin</a></li>
                                <li><a href="#">Chính sách bảo hành & đổi trả</a></li>
                                <li><a href="#">Chính sách giao hàng</a></li>
                                <li><a href="#">Hình thức thanh toán</a></li>
                                <li><a href="#">Hướng dẫn mua hàng</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- single widget end -->
                </div>
                <!-- single widget column end -->
                <div class="col-md-4 col-sm-6">
                    <div class="footer-widget mb-sm-30">
                        <div class="widget-title mb-10 mb-sm-6">
                            <h4>Về công ty</h4>
                        </div>
                        <div class="widget-body">
                            <ul>
                                <li><a href="#">Giới Thiệu </a></li>
                                <li><a href="#">Tin tức</a></li>
                                <li><a href="#">Liên hệ</a></li>
                                <li><a href="#">Chính sách</a></li>
                                <li><a href="#">Hotline: 123456789</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- single widget end -->
                </div>
            </div>
        </div>
    </div>
    <!-- footer main end -->
</footer>
<!-- footer area end -->