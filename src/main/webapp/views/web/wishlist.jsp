<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js" lang="en">


<head>
  <jsp:include page="/pages/web/links.jsp"/>
  <!-- Site title -->
  <title>Galio - Yêu thích</title>
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
                <li class="breadcrumb-item active" aria-current="page">Yêu thích</li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- breadcrumb area end -->

  <!-- wishlist main wrapper start -->
  <div class="wishlist-main-wrapper">
    <div class="container">
      <!-- Wishlist Page Content Start -->
      <div class="row">
        <div class="col-lg-12">
          <!-- Wishlist Table Area -->
          <div class="cart-table table-responsive">
            <table class="table table-bordered">
              <thead>
              <tr>
                <th class="pro-thumbnail">Hình</th>
                <th class="pro-title">Tên</th>
                <th class="pro-price">Giá</th>
<%--                <th class="pro-quantity">Stock Status</th>--%>
                <th class="pro-subtotal">Thêm vào giỏ hàng</th>
                <th class="pro-remove">Xóa</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td class="pro-thumbnail"><a href="#"><img class="img-fluid" src="assets/img/product/product-img7.jpg"
                                                           alt="Product"/></a></td>
                <td class="pro-title"><a href="#">element snowboard</a></td>
                <td class="pro-price"><span>$295.00</span></td>
<%--                <td class="pro-quantity"><span class="text-success">In Stock</span></td>--%>
                <td class="pro-subtotal"><a href="cart.html" class="sqr-btn text-white">Add to Cart</a></td>
                <td class="pro-remove"><a href="#"><i class="fa-solid fa-trash"></i></a></td>
              </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <!-- Wishlist Page Content End -->
    </div>
  </div>
  <!-- wishlist main wrapper end -->

  <!-- footer area start -->
  <jsp:include page="/pages/web/footer.jsp"/>
  <!-- footer area end -->
</div>

<jsp:include page="/pages/web/scripts.jsp"/>
</body>


</html>