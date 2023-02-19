<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 2/17/2023
  Time: 8:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal-header">
  <h5 class="modal-title" id="formModal">${cateModel.id != null ? "Chỉnh sửa danh mục" : "Thêm danh mục"}</h5>
  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<div class="modal-body">
  <form id="categoryForm" class="">
    <div class="form-group">
      <label>Tên</label>
      <div class="input-group">
        <div class="input-group-prepend">
          <div class="input-group-text">
            <i class="fas fa-envelope"></i>
          </div>
        </div>
        <input type="text" class="form-control" value="${cateModel.name}" placeholder="Tên" id="name" name="name">
      </div>
    </div>
    <div class="form-group">
      <label>Mô tả</label>
      <div class="input-group">
        <div class="input-group-prepend">
          <div class="input-group-text">
            <i class="fas fa-lock"></i>
          </div>
        </div>
        <input type="text" class="form-control" value="${cateModel.description}" placeholder="Mô tả" id="description" name="description">
      </div>
    </div>
    <input name="id" value="${cateModel.id}" id="id" hidden>
    <button id="btnSubmit" type="button" class="btn btn-primary m-t-15 waves-effect">${cateModel.id != null ? "Chỉnh sửa" : "Thêm"}</button>
  </form>
</div>