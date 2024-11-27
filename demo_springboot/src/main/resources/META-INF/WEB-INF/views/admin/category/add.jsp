<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/taglib.jsp"%>

<h2>${category.isEdit ? 'Edit Category': 'Add New Category'}</h2>
<form action="/admin/categories/save" method="post">
	<input type="hidden" value="${category.isEdit}" name="isEdit">
	<input type="hidden" value="${category.categoryid}" name="categoryid">

	<label>Category name</label><br> <input type="text"
		name="categoryname" value="${category.categoryname}"><br>
	<label>Images</label><br> <input type="text" name="images"
		value="${category.images}"><br> <label>Status</label><br>
	<input type="text" name="status" value="${category.status}"><br>

	<c:if test="${category.isEdit}">
		<input type="submit" value="Update">
	</c:if>
	<c:if test="${!category.isEdit}">
		<input type="submit" value="Insert">
	</c:if>



</form>