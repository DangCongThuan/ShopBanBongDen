<!DOCTYPE html>
<html class="no-js" lang="en">


<head>
  <jsp:include page="/pages/web/links.jsp"/>
  <!-- Site title -->
  <title>Galio - Chi tiết sản phẩm</title>
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
                <li class="breadcrumb-item"><a href="shop-grid-left-sidebar.html">shop</a></li>
                <li class="breadcrumb-item active" aria-current="page">checkout</li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- breadcrumb area end -->

  <!-- compare main wrapper start -->
  <div class="compare-page-wrapper">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <!-- Compare Page Content Start -->
          <div class="compare-page-content-wrap">
            <div class="compare-table table-responsive">
              <table class="table table-bordered mb-0">
                <tbody>
                <tr>
                  <td class="first-column">Product</td>
                  <td class="product-image-title">
                    <a href="single-product.html" class="image">
                      <img class="img-fluid" src="assets/img/product/product-img4.jpg" alt="Compare Product">
                    </a>
                    <a href="#" class="category">Daimond</a>
                    <a href="single-product-sale.html" class="title">wet food</a>
                  </td>
                  <td class="product-image-title">
                    <a href="single-product.html" class="image">
                      <img class="img-fluid" src="assets/img/product/product-img5.jpg" alt="Compare Product">
                    </a>
                    <a href="#" class="category">Gold</a>
                    <a href="single-product-group.html" class="title">organic food</a>
                  </td>
                  <td class="product-image-title">
                    <a href="single-product.html" class="image">
                      <img class="img-fluid" src="assets/img/product/product-img2.jpg" alt="Compare Product">
                    </a>
                    <a href="#" class="category">Ring</a>
                    <a href="single-product.html" class="title">dry food</a>
                  </td>
                </tr>
                <tr>
                  <td class="first-column">Description</td>
                  <td class="pro-desc">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident nulla, explicabo iste a rerum pariatur.</p>
                  </td>
                  <td class="pro-desc">
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sit commodi obcaecati cumque consectetur alias incidunt?</p>
                  </td>
                  <td class="pro-desc">
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius, facere. Fuga asperiores inventore iste tempora.</p>
                  </td>
                </tr>
                <tr>
                  <td class="first-column">Price</td>
                  <td class="pro-price">$295</td>
                  <td class="pro-price">$275</td>
                  <td class="pro-price">$395</td>
                </tr>
                <tr>
                  <td class="first-column">Color</td>
                  <td class="pro-color">Black</td>
                  <td class="pro-color">Red</td>
                  <td class="pro-color">Blue</td>
                </tr>
                <tr>
                  <td class="first-column">Stock</td>
                  <td class="pro-stock">In Stock</td>
                  <td class="pro-stock">Stock Out</td>
                  <td class="pro-stock">In Stock</td>
                </tr>
                <tr>
                  <td class="first-column">Add to cart</td>
                  <td><a href="cart.html" class="sqr-btn">Add to Cart</a></td>
                  <td><a href="cart.html" class="sqr-btn disabled">Add to Cart</a></td>
                  <td><a href="cart.html" class="sqr-btn">Add to Cart</a></td>
                </tr>
                <tr>
                  <td class="first-column">Rating</td>
                  <td class="pro-ratting">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                  </td>
                  <td class="pro-ratting">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </td>
                  <td class="pro-ratting">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                  </td>
                </tr>
                <tr>
                  <td class="first-column">Remove</td>
                  <td class="pro-remove">
                    <button><i class="fa fa-trash-o"></i></button>
                  </td>
                  <td class="pro-remove">
                    <button><i class="fa fa-trash-o"></i></button>
                  </td>
                  <td class="pro-remove">
                    <button><i class="fa fa-trash-o"></i></button>
                  </td>
                </tr>
                </tbody>
              </table>
            </div>
          </div>
          <!-- Compare Page Content End -->
        </div>
      </div>
    </div>
  </div>
  <!-- compare main wrapper end -->

  <!-- footer area start -->
  <jsp:include page="/pages/web/footer.jsp"/>
  <!-- footer area end -->
</div>

<jsp:include page="/pages/web/scripts.jsp"/>
</body>


</html>