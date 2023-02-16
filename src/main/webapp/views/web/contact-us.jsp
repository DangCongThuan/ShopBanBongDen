<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 2/8/2023
  Time: 10:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
  <jsp:include page="/pages/web/links.jsp"/>
  <!-- Site title -->
  <title>Galio - Liên hệ</title>
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
                <li class="breadcrumb-item active" aria-current="page">Liên hệ</li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- breadcrumb area end -->

  <!-- contact area start -->
  <div class="contact-area pb-34 pb-md-18 pb-sm-0">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="contact-message">
            <h2>Nói cho chúng tôi điều bạn nghĩ</h2>
            <form id="contact-form" action="http://demo.hasthemes.com/galio-v6/galio/assets/php/mail.php" method="post" class="contact-form">
              <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <input name="first_name" placeholder="Tên *" type="text" required>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <input name="phone" placeholder="SDT *" type="tel" required>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <input name="email_address" placeholder="Email *" type="email" required>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <input name="contact_subject" placeholder="Tiêu đề *" type="text">
                </div>
                <div class="col-12">
                  <div class="contact2-textarea text-center">
                    <textarea placeholder="Nội dung *" name="message"  class="form-control2" required=""></textarea>
                  </div>
                  <div class="contact-btn">
                    <button class="sqr-btn" type="submit">Gửi</button>
                  </div>
                </div>
                <div class="col-12 d-flex justify-content-center">
                  <p class="form-messege"></p>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="contact-info mt-md-28 mt-sm-28">
            <h2>Liên hệ với chúng tôi</h2>
            <p>Nếu bạn có thắc măc hãy liên hệ với chúng tôi theo các cách bên dưới. Chúng tôi sẽ cố gắng gửi phản hồi sớm nhất cho bạn.</p>
            <ul>
              <li><i class="fa fa-fax"></i>Địa chỉ : Khu phố 6, phường Linh Trung, thành phố Thủ Đức , Thành phố Hồ Chí Minh , Việt Nam</li>
              <li><i class="fa fa-phone"></i> info@yourdomain.com</li>
              <li><i class="fa fa-envelope-o"></i> +88013245657</li>
            </ul>
            <div class="working-time">
              <h3>Giờ làm việc</h3>
              <p><span>Thứ 2 – Thứ 7:</span>8h – 17h</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- contact area end -->

  <!-- footer area start -->
  <jsp:include page="/pages/web/footer.jsp"/>
  <!-- footer area end -->
</div>

<jsp:include page="/pages/web/scripts.jsp"/>
</body>


</html>
