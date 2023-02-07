<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 2/8/2023
  Time: 10:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- pricing filter start -->
<div class="sidebar-widget mb-30">
  <div class="sidebar-title mb-10">
    <h3>filter by price</h3>
  </div>
  <div class="sidebar-widget-body">
    <div class="price-range-wrap">
      <div class="price-range" data-min="50" data-max="400"></div>
      <div class="range-slider">
        <form action="#" class="d-flex justify-content-between">
          <button class="filter-btn">filter</button>
          <div class="price-input d-flex align-items-center">
            <label for="amount">Price: </label>
            <input type="text" id="amount">
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- pricing filter end -->

<!-- product size start -->
<div class="sidebar-widget mb-30">
  <div class="sidebar-title mb-10">
    <h3>size</h3>
  </div>
  <div class="sidebar-widget-body">
    <ul>
      <li><i class="fa fa-angle-right"></i><a href="#">s</a><span>(10)</span></li>
      <li><i class="fa fa-angle-right"></i><a href="#">m</a><span>(12)</span></li>
      <li><i class="fa fa-angle-right"></i><a href="#">l</a><span>(20)</span></li>
      <li><i class="fa fa-angle-right"></i><a href="#">XL</a><span>(12)</span></li>
    </ul>
  </div>
</div>
<!-- product size end -->
