<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
  <jsp:include page="/pages/web/links.jsp"/>
  <!-- Site title -->
  <title>Galio - Giỏ hàng</title>
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
                <li class="breadcrumb-item active" aria-current="page">Giỏ hàng</li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- breadcrumb area end -->

  <!-- cart main wrapper start -->
  <div class="cart-main-wrapper">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <!-- Cart Table Area -->
          <div class="cart-table table-responsive">
            <table class="table table-bordered">
              <thead>
              <tr>
                <th class="pro-thumbnail">Hình mô tả</th>
                <th class="pro-title">Sản phẩm</th>
                <th class="pro-price">Giá</th>
                <th class="pro-quantity">Số lươợng</th>
                <th class="pro-subtotal">Tổng</th>
                <th class="pro-remove">Xóa</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td class="pro-thumbnail"><a href="#"><img class="img-fluid" src="assets/img/product/product-img2.jpg"
                                                           alt="Product"/></a></td>
                <td class="pro-title"><a href="#">k2 snowboard 2018</a></td>
                <td class="pro-price"><span>$295.00</span></td>
                <td class="pro-quantity">
                  <div class="pro-qty"><input type="text" value="1"></div>
                </td>
                <td class="pro-subtotal"><span>$295.00</span></td>
                <td class="pro-remove"><a href="#"><i class="fa-solid fa-trash"></i></a></td>
              </tr>
              </tbody>
            </table>
          </div>

          <!-- Cart Update Option -->
          <div class="cart-update-option d-block d-md-flex justify-content-between">
            <div class="apply-coupon-wrapper">
              <form action="#" method="post" class=" d-block d-md-flex">
                <input type="text" placeholder="Nhập mã giảm giá tại đây" required />
                <button class="sqr-btn">Nhập mã giảm giá</button>
              </form>
            </div>
            <div class="cart-update mt-sm-16">
              <a href="#" class="sqr-btn">Cập nhật</a>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-lg-5 ml-auto">
          <!-- Cart Calculation Area -->
          <div class="cart-calculator-wrapper">
            <div class="cart-calculate-items">
              <h3>Tổng giỏ hàng</h3>
              <div class="table-responsive">
                <table class="table">
                  <tr>
                    <td>Tổng giá</td>
                    <td>$230</td>
                  </tr>
                  <tr>
                    <td>Phí Ship</td>
                    <td>$70</td>
                  </tr>
                  <tr class="total">
                    <td>Thành tiền</td>
                    <td class="total-amount">$300</td>
                  </tr>
                </table>
              </div>
            </div>
            <a href="checkout.html" class="sqr-btn d-block">Đi đến đặt hàng</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- cart main wrapper end -->

  <!-- footer area start -->
  <jsp:include page="/pages/web/footer.jsp"/>
  <!-- footer area end -->
</div>

<jsp:include page="/pages/web/scripts.jsp"/>
</body>


</html>