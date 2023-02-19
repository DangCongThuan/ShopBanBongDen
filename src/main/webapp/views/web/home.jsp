<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 2/7/2023
  Time: 5:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <jsp:include page="/pages/web/links.jsp"/>
    <!-- Site title -->
    <title>Galio - Trang Chủ</title>
    <!-- Favicon -->
</head>
<body>

<div class="wrapper box-layout">
    <!--   header begin   -->
    <jsp:include page="/pages/web/header.jsp"/>
    <!--    header end  -->
    <!-- hero slider start -->
    <div class="hero-slider-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="slider-wrapper-area2 mt-30">
                        <div class="hero-slider-active hero__2 slick-dot-style hero-dot">
                            <div class="single-slider d-flex align-items-center"
                                 style="background-image: url(<c:url value="/assets/web/img/slider/slider-1.png"/>);">
                                <div class="container">
                                    <div class="slider-main-content">
                                        <div class="slider-text text-center">
                                            <h2>Buớc vào thế giới</h2>
                                            <h3>ánh sáng</h3>
                                            <p>Sản phẩm và lời khuyên, ý tưởng và nguồn cảm hứng.Bạn sẽ tìm thấy tất cả
                                                tại đây</p>
                                            <a class="home-btn" href="#">Mua sắm ngay</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="single-slider d-flex align-items-center"
                                 style="background-image: url(<c:url value="/assets/web/img/slider/slider-2.png"/>);">
                                <div class="container">
                                    <div class="slider-main-content">
                                        <div class="slider-text text-center">
                                            <h2>Buớc vào thế giới</h2>
                                            <h3>ánh sáng</h3>
                                            <p>Sản phẩm và lời khuyên, ý tưởng và nguồn cảm hứng.Bạn sẽ tìm thấy tất cả
                                                tại đây</p>
                                            <a class="home-btn" href="#">Mua sắm ngay</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hero slider end -->

    <!-- home banner area start -->
    <div class="banner-area mt-34 mb-4 mt-xs-0">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-5 order-1">
                    <div class="img-container img-full fix">
                        <a href="#">
                            <img src="<c:url value="/assets/web/img/banner/banner-1.png"/>" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5 order-sm-3 mt-sm-30">
                    <div class="img-container img-full fix mb-30">
                        <a href="#">
                            <img src="<c:url value="/assets/web/img/banner/banner-2.png"/>" alt="">
                        </a>
                    </div>
                    <div class="img-container img-full fix mb-30">
                        <a href="#">
                            <img src="<c:url value="/assets/web/img/banner/banner-3.png"/>" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-7 order-2 order-md-3 mt-xs-30">
                    <div class="img-container img-full fix">
                        <a href="#">
                            <img src="<c:url value="/assets/web/img/banner/banner-4.png"/>" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- home banner area end -->

    <!-- about wrapper start -->
    <div class="about-us-wrapper pt-4">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="title-box text-center mb-30">
                        <h3>Về chúng tôi</h3>
                    </div>
                </div>
            </div> <!-- section title end -->
            <div class="row">
                <!-- About Text Start -->
                <div class="col-lg-6">
                    <div class="about-text-wrap">
                        <h2><span>Cung cấp những </span>Sản phẩm tốt nhất cho bạn</h2>
                        <p>Chúng tôi là nhà sản xuất đèn LED chiếu sáng hiệu quả chuyên sử dụng các thương hiệu chip LED
                            hàng đầu hiện nay như: Bridgelux, Philips, Cree, Epistar... và mạch điều khiển thương hiệu
                            Meanwell, Moso, Done hoặc AMBEE tự sản xuất để đảm bảo yêu cầu chất lượng cao. Các dòng sản
                            phẩm
                            đèn led công nghiệp chuyên dụng cho nhà máy của công ty chúng tôi gồm: đèn LED nhà xưởng,
                            đèn
                            pha LED, đèn đường LED, đèn LED tuýp, đèn led chống thấm IP65&IP67, đèn LED Panel, đèn LED
                            máy
                            may, đèn chống cháy nổ LED. Ngoài ra còn có các dòng sản phẩm cho dân dụng gồm: đèn LED âm
                            trần,
                            đèn led ốp nổi, đèn LED bulb, đèn LED downlight…</p>
                    </div>
                </div>
                <!-- About Text End -->
                <!-- About Image Start -->
                <div class="col-lg-5 ml-auto">
                    <div class="about-image-wrap mt-md-26 mt-sm-26">
                        <img src="<c:url value="/assets/web/img/about/about.jpg"/>" alt="About"/>
                    </div>
                </div>
                <!-- About Image End -->
            </div>
        </div>
    </div>
    <!-- about wrapper end -->
    <div class="container pt-4">
        <div class="row">
            <div class="col-12">
                <div class="title-box text-center mb-30">
                    <h3>Khách hàng nói gì về chúng tôi</h3>
                </div>
            </div>
        </div> <!-- section title end -->
    </div>
    <!-- testimonial area start -->
    <div class="testimonial-area2">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="testimonial-title text-center mb-28">
                        <h3>Khách hàng thân thiết</h3>
                    </div> <!-- section title end -->
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="testimonial-carousel-active testimonial-style-2 slick-dot-style">
                        <div class="testimonial-item text-center">
                            <div class="testimonial-thumb">
                                <img src="<c:url value="/assets/web/img/testimonial/avatar-1.png"/>" alt="">
                            </div>
                            <div class="testimonial-content">
                                <p>Sau 4 năm sử dụng tôi thấy chất lượng đèn vẫn ổn định, ánh sáng duy trì tốt, thời
                                    gian thay thế và bảo dưỡng cũng được kéo dài ra, dường như là không cần phải thay
                                    thế.</p>
                                <h3><a href="#">
                                    Anh Đỗ Minh Quốc</a></h3>
                            </div>
                        </div> <!-- end single testimonial item -->
                        <div class="testimonial-item text-center">
                            <div class="testimonial-thumb">
                                <img src="<c:url value="/assets/web/img/testimonial/avatar-2.png"/>" alt="">
                            </div>
                            <div class="testimonial-content">
                                <p>Trước đây công ty sử dụng bóng đèn thường, đến sau này mới chuyển qua sử dụng bóng
                                    đèn LED do công ty cung cấp, tính đến thời điểm hiện tại chúng tôi đã sử dụng
                                    được 6 năm rồi nhưng tôi thấy độ sáng vẫn chuẩn, tuổi thọ rất cao, và tiết kiệm được
                                    70% điện năng.</p>
                                <h3><a href="#">Ông Bùi Văn Mẫu</a></h3>
                            </div>
                        </div> <!-- end single testimonial item -->
                        <div class="testimonial-item text-center">
                            <div class="testimonial-thumb">
                                <img src="<c:url value="/assets/web/img/testimonial/avatar-3.png"/>" alt="">
                            </div>
                            <div class="testimonial-content">
                                <p>Sản phẩm của công ty rất tốt, độ bền cao, độ chiếu sáng tốt, tôi rất hài lòng về sản phẩm của công ty. </p>
                                <h3><a href="#">Chị Nguyễn Thị Ngọc </a></h3>
                            </div>
                        </div> <!-- end single testimonial item -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- testimonial area end -->

    <!-- choosing area start -->
    <div class="choosing-area pt-28">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="title-box text-center mb-30">
                        <h3>Tại sao chọn chúng tôi</h3>
                    </div>
                </div>
            </div> <!-- section title end -->
            <div class="row">
                <div class="col-lg-4">
                    <div class="single-choose-item text-center mb-md-30 mb-sm-30">
                        <i class="fa fa-globe"></i>
                        <h4>Miễn phí vận chuyển</h4>
                        <p>Miễn phí vận chuyển đơn hàng lớn hơn 1TR</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-choose-item text-center mb-md-30 mb-sm-30">
                        <i class="fa fa-plane"></i>
                        <h4>Giao hàng nhanh chóng</h4>
                        <p>Đảm bảo giao đúng giời, trong vòng 24h cho nội thành và 72h cho ngoại thành.</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-choose-item text-center mb-md-30 mb-sm-30">
                        <i class="fa fa-comments"></i>
                        <h4>Hỗ trợ khách hàng</h4>
                        <p>Chúng tôi luôn phản hồi nhanh nhất có thể về các thắc mắc của khách hàng.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- choosing area end -->

    <!--   footer begin   -->
    <jsp:include page="/pages/web/footer.jsp"/>
    <!--    footer end  -->
</div>

<!-- Quick view modal start -->
<div class="modal" id="quick_view">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    &times;
                </button>
            </div>
            <div class="modal-body">
                <!-- product details inner end -->
                <div class="product-details-inner">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="product-large-slider slick-arrow-style_2 mb-20">
                                <div class="pro-large-img">
                                    <img
                                            src="assets/img/product/product-details-img1.jpg"
                                            alt=""
                                    />
                                </div>
                                <div class="pro-large-img">
                                    <img
                                            src="assets/img/product/product-details-img2.jpg"
                                            alt=""
                                    />
                                </div>
                                <div class="pro-large-img">
                                    <img
                                            src="assets/img/product/product-details-img3.jpg"
                                            alt=""
                                    />
                                </div>
                                <div class="pro-large-img">
                                    <img
                                            src="assets/img/product/product-details-img4.jpg"
                                            alt=""
                                    />
                                </div>
                                <div class="pro-large-img">
                                    <img
                                            src="assets/img/product/product-details-img5.jpg"
                                            alt=""
                                    />
                                </div>
                            </div>
                            <div class="pro-nav slick-padding2 slick-arrow-style_2">
                                <div class="pro-nav-thumb">
                                    <img
                                            src="assets/img/product/product-details-img1.jpg"
                                            alt=""
                                    />
                                </div>
                                <div class="pro-nav-thumb">
                                    <img
                                            src="assets/img/product/product-details-img2.jpg"
                                            alt=""
                                    />
                                </div>
                                <div class="pro-nav-thumb">
                                    <img
                                            src="assets/img/product/product-details-img3.jpg"
                                            alt=""
                                    />
                                </div>
                                <div class="pro-nav-thumb">
                                    <img
                                            src="assets/img/product/product-details-img4.jpg"
                                            alt=""
                                    />
                                </div>
                                <div class="pro-nav-thumb">
                                    <img
                                            src="assets/img/product/product-details-img5.jpg"
                                            alt=""
                                    />
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="product-details-des mt-md-34 mt-sm-34">
                                <h3>
                                    <a href="product-details.html">external product 12</a>
                                </h3>
                                <div class="ratings">
                                    <span class="good"><i class="fa fa-star"></i></span>
                                    <span class="good"><i class="fa fa-star"></i></span>
                                    <span class="good"><i class="fa fa-star"></i></span>
                                    <span class="good"><i class="fa fa-star"></i></span>
                                    <span><i class="fa fa-star"></i></span>
                                    <div class="pro-review">
                                        <span>1 review(s)</span>
                                    </div>
                                </div>
                                <div class="availability mt-10">
                                    <h5>Availability:</h5>
                                    <span>1 in stock</span>
                                </div>
                                <div class="pricebox">
                                    <span class="regular-price">$160.00</span>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
                                    sed diam nonumy eirmod tempor invidunt ut labore et dolore
                                    magna aliquyam erat, sed diam voluptua.<br/>
                                    Phasellus id nisi quis justo tempus mollis sed et dui. In
                                    hac habitasse platea dictumst. Suspendisse ultrices mauris
                                    diam. Nullam sed aliquet elit. Mauris consequat nisi ut
                                    mauris efficitur lacinia.
                                </p>
                                <div
                                        class="quantity-cart-box d-flex align-items-center mt-20"
                                >
                                    <div class="quantity">
                                        <div class="pro-qty">
                                            <input type="text" value="1"/>
                                        </div>
                                    </div>
                                    <div class="action_link">
                                        <a class="buy-btn" href="#"
                                        >add to cart<i class="fa fa-shopping-cart"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- product details inner end -->
            </div>
        </div>
    </div>
</div>
<!-- Quick view modal end -->
<jsp:include page="/pages/web/scripts.jsp"/>
</body>
</html>

