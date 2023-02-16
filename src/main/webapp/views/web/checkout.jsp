<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="en">


<head>
    <jsp:include page="/pages/web/links.jsp"/>
    <!-- Site title -->
    <title>Galio - Đặt hàng</title>
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
                                <li class="breadcrumb-item active" aria-current="page">Đặt hàng</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- checkout main wrapper start -->
    <div class="checkout-page-wrapper">
        <div class="container">
            <div class="row">
                <!-- Checkout Billing Details -->
                <div class="col-lg-6">
                    <div class="checkout-billing-details-wrap">
                        <h2>Chi tiết đơn hàng</h2>
                        <div class="billing-form-wrap">
                            <form action="#">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="single-input-item">
                                            <label for="f_name" class="required">Họ</label>
                                            <input type="text" id="f_name" placeholder="Họ" required />
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="single-input-item">
                                            <label for="l_name" class="required">Tên</label>
                                            <input type="text" id="l_name" placeholder="Tên" required />
                                        </div>
                                    </div>
                                </div>

                                <div class="single-input-item">
                                    <label for="email" class="required">Email</label>
                                    <input type="email" id="email" placeholder="Email" required />
                                </div>


                                <div class="single-input-item">
                                    <label for="city" class="required">Tỉnh / Thành phố</label>
                                    <input type="text" id="city" placeholder="Tỉnh / Thành phố" required />
                                </div>

                                <div class="single-input-item">
                                    <label for="town" class="required pt-20">Quận / huyện</label>
                                    <input type="text" id="town" placeholder="Quận / huyện" required />
                                </div>

                                <div class="single-input-item">
                                    <label for="street-address" class="required pt-20">Địa chỉ</label>
                                    <input type="text" id="street-address"  placeholder="Địa chỉ chi tiết" />
                                </div>



                                <div class="single-input-item">
                                    <label for="phone">SDT</label>
                                    <input type="text" id="phone"  placeholder="SDT" />
                                </div>

                                <div class="single-input-item">
                                    <label for="ordernote">Ghi chú đơn hàng</label>
                                    <textarea name="ordernote" id="ordernote" cols="30" rows="3" placeholder="Ghi chú về đơn đặt hàng của bạn, ví dụ: ghi chú đặc biệt cho giao hàng."></textarea>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- Order Summary Details -->
                <div class="col-lg-6">
                    <div class="order-summary-details mt-md-26 mt-sm-26">
                        <div class="order-summary-content mb-sm-4">
                            <!-- Order Summary Table -->
                            <div class="order-summary-table table-responsive text-center">
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>Sản phẩm</th>
                                        <th>Tổng</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><a href="single-product.html">Suscipit Vestibulum <strong> × 1</strong></a></td>
                                        <td>$165.00</td>
                                    </tr>
                                    <tr>
                                        <td><a href="single-product.html">Ami Vestibulum suscipit <strong> × 4</strong></a></td>
                                        <td>$165.00</td>
                                    </tr>
                                    <tr>
                                        <td><a href="single-product.html">Vestibulum suscipit <strong> × 2</strong></a></td>
                                        <td>$165.00</td>
                                    </tr>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <td></td>
                                        <td><strong>$400</strong></td>
                                    </tr>
                                    <tr>
                                        <td>Phí ship</td>
                                        <td class="d-flex justify-content-center">
                                            <ul class="shipping-type">
                                                <li>
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" id="flatrate" name="shipping" class="custom-control-input" checked />
                                                        <label class="custom-control-label" for="flatrate">Hỏa tốc: $70.00</label>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" id="freeshipping" name="shipping" class="custom-control-input" />
                                                        <label class="custom-control-label" for="freeshipping">Miễn phí ship</label>
                                                    </div>
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Thành tiền</td>
                                        <td><strong>$470</strong></td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- Order Payment Method -->
                            <div class="order-payment-method">
                                <div class="single-payment-method show">
                                    <div class="payment-method-name">
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="cashon" name="paymentmethod" value="cash" class="custom-control-input" checked  />
                                            <label class="custom-control-label" for="cashon">Thanh toán khi nhận hàng</label>
                                        </div>
                                    </div>
                                    <div class="payment-method-details" data-method="cash">
                                        <p>Thanh toán trực tiếp khi nhận hàng.</p>
                                    </div>
                                </div>
                                <div class="single-payment-method">
                                    <div class="payment-method-name">
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="directbank" name="paymentmethod" value="bank" class="custom-control-input" />
                                            <label class="custom-control-label" for="directbank">Chuyển khoản ngân hàng</label>
                                        </div>
                                    </div>
                                    <div class="payment-method-details" data-method="bank">
                                        <p>Thực hiện thanh toán của bạn trực tiếp vào tài khoản ngân hàng của chúng tôi. Vui lòng sử dụng ID đơn đặt hàng của bạn làm tham chiếu thanh toán. Đơn đặt hàng của bạn sẽ không được giao cho đến khi số tiền trong tài khoản của chúng tôi đã được nhận.</p>
                                    </div>
                                </div>
                                <div class="summary-footer-area">
                                    <div class="custom-control custom-checkbox mb-14">
                                        <input type="checkbox" class="custom-control-input" id="terms" required />
                                        <label class="custom-control-label" for="terms">Tôi đã đọc và đồng ý với <a
                                                href="index.html">các điều khoản và điều kiện.</a></label>
                                    </div>
                                    <button type="submit" class="check-btn sqr-btn">Đặt hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- checkout main wrapper end -->

    <!-- footer area start -->
    <jsp:include page="/pages/web/footer.jsp"/>
    <!-- footer area end -->
</div>

<jsp:include page="/pages/web/scripts.jsp"/>
</body>


</html>